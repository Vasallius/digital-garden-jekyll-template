## Getting Started

### What is Hexo?
Hexo is a fast, simple and powerful blog framework. You write posts in Markdown (or other markup languages) and Hexo generates static files with a beautiful theme in seconds.

### Requirements
Installing Hexo is quite easy and only requires the following beforehand:

- Node.js (Should be at least Node.js 10.13, recommends 12.0 or higher)
	- install using nvs
- Git
	- install git bash

### Install Hexo
`npm install hexo`

### Setup
``` cmd 
$ hexo init <folder>
$ cd <folder>
$ npm install
```

### \_config.yml_
You can configure most of the settings in **\_config.yml**

![[Pasted image 256.png]]
![[Pasted image 257.png]]

### commands

**init** - setup a website in the given folder
**new** - make a new post 
**generate** - generate statis files
**publish** - publish a draft
**server** - starts a local server
**deploy**

### Basic Usage
- **Writing**
	- Layout
		- post
		- page
		- draft
	- Filename
		- edit `new_post_name` in config file
	- Drafts
		- drafts are not displayed by default
		- use publish to move drafts to \_posts folder
	- Scaffolds
		- basically like templates
- **Front Matter**
	- YAML or JSON
	- different place holders see documentation
- **Tag Plugins**
	- Tag plugins are different from post tags. They are ported from Octopress and provide a useful way for you to quickly add specific content to your posts.
	- Plain Blockquote Syntax
		- ``{% endblockquote %}``
	- Quote from Book
		- `{% blockquote David Levithan, Wide Awake %}
Do not just seek happiness for yourself. Seek happiness for all. Through kindness. Through mercy.
{% endblockquote %}`
	- Can embed more stuff, check documentation
- **Asset Folders**
	- Assets are non-post files in the source folder, such as images, CSS or JavaScript files. For instance, If you are only going to have a few images in the Hexo project, then the easiest way is to keep them in a source/images directory. Then, you can access them using something like \!\[](/images/image.jpg)
	- You can also managed them by post

### Deployment
- one command to deploy
	- `hexo deploy`
- configure in config file
	- ![[Pasted image 258.png]]
- install hexo-deployer-git
	- `npm install hexo-deployer-git --save`