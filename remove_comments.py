#!/usr/bin/env python3
"""
Script to remove all comments from the FemFlare 2025 project
Removes:
- Java comments: // and /* */
- CSS comments: /* */
- HTML comments: <!-- -->
- XML comments: <!-- -->
"""

import os
import re
import glob

def remove_comments_from_file(file_path, file_type):
    """Remove comments from a file based on its type"""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        original_content = content
        
        if file_type in ['java', 'js']:
            # Remove single-line comments // but preserve URLs
            content = re.sub(r'(?<!:)//(?!/)[^\r\n]*', '', content)
            # Remove multi-line comments /* */
            content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)
        
        elif file_type in ['css', 'jsp', 'html']:
            # Remove CSS comments /* */ but preserve URL contents
            content = re.sub(r'/\*(?!.*url\().*?\*/', '', content, flags=re.DOTALL)
            
            if file_type in ['jsp', 'html']:
                # Remove HTML comments <!-- --> but preserve CSS/JS inside style/script tags
                content = re.sub(r'<!--(?!.*<style|.*<script).*?-->', '', content, flags=re.DOTALL)
        
        elif file_type == 'xml':
            # Remove XML comments <!-- -->
            content = re.sub(r'<!--.*?-->', '', content, flags=re.DOTALL)
        
        # Clean up multiple empty lines
        content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
        
        # Only write if content changed
        if content != original_content:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            print(f"✅ Removed comments from: {file_path}")
        else:
            print(f"⚪ No comments found in: {file_path}")
            
    except Exception as e:
        print(f"❌ Error processing {file_path}: {e}")

def main():
    """Main function to process all files"""
    base_path = "."
    
    # File patterns and their types
    file_patterns = {
        '**/*.java': 'java',
        '**/*.jsp': 'jsp', 
        '**/*.css': 'css',
        '**/*.js': 'js',
        '**/*.html': 'html',
        '**/pom.xml': 'xml'
    }
    
    print("🧹 Starting comment removal from FemFlare 2025 project...")
    print("=" * 60)
    
    total_files = 0
    
    for pattern, file_type in file_patterns.items():
        files = glob.glob(os.path.join(base_path, pattern), recursive=True)
        
        # Skip target directory and other build directories
        files = [f for f in files if 'target' not in f and '.git' not in f and 'node_modules' not in f]
        
        print(f"\n📁 Processing {file_type.upper()} files:")
        print("-" * 30)
        
        for file_path in files:
            remove_comments_from_file(file_path, file_type)
            total_files += 1
    
    print(f"\n🎉 Comment removal completed!")
    print(f"📊 Total files processed: {total_files}")
    print("=" * 60)

if __name__ == "__main__":
    main()
