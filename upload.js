// File Upload Functionality for Aether Studio Website

class FileUploadManager {
    constructor() {
        this.uploads = {};
        this.init();
    }

    init() {
        // Initialize upload areas for all assignments
        for (let i = 1; i <= 6; i++) {
            this.initUploadArea(i);
        }
    }

    initUploadArea(assignmentNum) {
        const uploadArea = document.getElementById(`uploadArea${assignmentNum}`);
        const fileInput = document.getElementById(`fileInput${assignmentNum}`);
        
        if (!uploadArea || !fileInput) return;

        // Click to upload
        uploadArea.addEventListener('click', () => {
            fileInput.click();
        });

        // File input change
        fileInput.addEventListener('change', (e) => {
            this.handleFiles(e.target.files, assignmentNum);
        });

        // Drag and drop
        uploadArea.addEventListener('dragover', (e) => {
            e.preventDefault();
            uploadArea.classList.add('dragover');
        });

        uploadArea.addEventListener('dragleave', () => {
            uploadArea.classList.remove('dragover');
        });

        uploadArea.addEventListener('drop', (e) => {
            e.preventDefault();
            uploadArea.classList.remove('dragover');
            this.handleFiles(e.dataTransfer.files, assignmentNum);
        });
    }

    handleFiles(files, assignmentNum) {
        const fileList = document.getElementById(`fileList${assignmentNum}`);
        const progressBar = document.getElementById(`progressBar${assignmentNum}`);
        const progressContainer = document.getElementById(`progress${assignmentNum}`);

        Array.from(files).forEach(file => {
            // Check file size (10MB limit)
            if (file.size > 10 * 1024 * 1024) {
                alert(`文件 "${file.name}" 超过10MB限制`);
                return;
            }

            // Add file to list
            this.addFileToList(file, fileList, assignmentNum);

            // Simulate upload progress
            this.simulateUpload(progressBar, progressContainer);
        });
    }

    addFileToList(file, fileList, assignmentNum) {
        const fileId = `file-${assignmentNum}-${Date.now()}`;
        const fileSize = this.formatFileSize(file.size);
        const fileIcon = this.getFileIcon(file.type);

        const fileItem = document.createElement('div');
        fileItem.className = 'file-item';
        fileItem.id = fileId;
        fileItem.innerHTML = `
            <div class="file-info">
                <i class="${fileIcon} file-icon"></i>
                <div>
                    <div class="file-name">${file.name}</div>
                    <div class="file-size">${fileSize}</div>
                </div>
            </div>
            <button class="file-remove" onclick="uploadManager.removeFile('${fileId}')">
                <i class="fas fa-times"></i>
            </button>
        `;

        fileList.appendChild(fileItem);

        // Store file info
        if (!this.uploads[assignmentNum]) {
            this.uploads[assignmentNum] = [];
        }
        this.uploads[assignmentNum].push({
            id: fileId,
            file: file,
            name: file.name,
            size: fileSize
        });
    }

    removeFile(fileId) {
        const fileItem = document.getElementById(fileId);
        if (fileItem) {
            fileItem.remove();
            
            // Remove from storage
            for (let key in this.uploads) {
                this.uploads[key] = this.uploads[key].filter(item => item.id !== fileId);
            }
        }
    }

    simulateUpload(progressBar, progressContainer) {
        progressContainer.classList.add('active');
        let progress = 0;
        
        const interval = setInterval(() => {
            progress += Math.random() * 15;
            if (progress >= 100) {
                progress = 100;
                clearInterval(interval);
                
                setTimeout(() => {
                    progressContainer.classList.remove('active');
                    progressBar.style.width = '0%';
                }, 500);
            }
            progressBar.style.width = progress + '%';
        }, 200);
    }

    formatFileSize(bytes) {
        if (bytes === 0) return '0 Bytes';
        const k = 1024;
        const sizes = ['Bytes', 'KB', 'MB', 'GB'];
        const i = Math.floor(Math.log(bytes) / Math.log(k));
        return Math.round(bytes / Math.pow(k, i) * 100) / 100 + ' ' + sizes[i];
    }

    getFileIcon(mimeType) {
        if (mimeType.startsWith('image/')) return 'fas fa-image';
        if (mimeType.includes('pdf')) return 'fas fa-file-pdf';
        if (mimeType.includes('word') || mimeType.includes('document')) return 'fas fa-file-word';
        if (mimeType.includes('excel') || mimeType.includes('sheet')) return 'fas fa-file-excel';
        if (mimeType.includes('zip') || mimeType.includes('compressed')) return 'fas fa-file-archive';
        if (mimeType.includes('code') || mimeType.includes('text')) return 'fas fa-file-code';
        return 'fas fa-file';
    }

    // Get uploaded files for an assignment
    getFiles(assignmentNum) {
        return this.uploads[assignmentNum] || [];
    }

    // Clear all files for an assignment
    clearFiles(assignmentNum) {
        const fileList = document.getElementById(`fileList${assignmentNum}`);
        if (fileList) {
            fileList.innerHTML = '';
        }
        this.uploads[assignmentNum] = [];
    }
}

// Initialize upload manager when DOM is loaded
let uploadManager;
document.addEventListener('DOMContentLoaded', () => {
    uploadManager = new FileUploadManager();
});
