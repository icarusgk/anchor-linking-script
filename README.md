# Anchor Linking Script
A script to link headers and anchors in two separate markdown documents.

This script was created to assist with the [Vue 3 Spanish translation project](https://github.com/drfcozapata/docs/issues/1), specifically by adding missing anchor links or replacing translated ones to the headers in translated markdown documents.  I hope to help future translations using this script so that they too can keep consistency and ease of navigation for those using the translated content.

### Usage
```bash
ruby script.rb <files.txt> <path_to_english_docs> <path_to_translated_docs>
```
Where:

`files.txt` is a file containing a list of filenames to process, one per line.
`path_to_english_docs` is the path to the directory containing the English markdown documents.
`path_to_translated_docs` is the path to the directory containing the translated markdown documents.

#### For example:

![Screenshot_20230129_211706](https://user-images.githubusercontent.com/38413630/215384682-5d83f958-5462-41e4-a0a4-d4a87b6dc627.png)


### Functionality
The script takes a list of markdown document filenames, and for each file:

- Reads the headers and their associated anchors from the English document
- Replaces the headers in the translated document with the headers from the English document, along with their associated anchors.


### Requirements
Ruby


### License
This code is licensed under the MIT License.

### Contributing
If you want to contribute to this project, please follow the standard Git workflow and make a pull request. Before making a pull request, please make sure that your changes are well tested and adhere to the code style of the project.
