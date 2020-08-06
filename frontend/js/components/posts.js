class Posts {
  constructor() {
    this.posts = []
    this.adapter = new PostsAdapter()
    this.initBindingsAndEventListeners()
    this.fetchAndLoadPosts()
  }

  initBindingsAndEventListeners() {
    this.postsList = document.getElementById('posts-list')
    this.newPostTitle = document.getElementById('name')
    this.newPostShowNotes = document.getElementById('show_notes')
    this.newPostLength = document.getElementById('length')
    this.newPostVideo = document.getElementById('video')
    this.newPostCategory = document.getElementById('category')
    this.newPostSeries = document.getElementById('series')
    this.postForm = document.getElementById('new-post-form')
    this.postForm.addEventListener('submit', this.createPost.bind(this))
  }

  createPost(e) {
    e.preventDefault()
    const formData = {
      title: this.newPostTitle,
      show_notes: this.newPostShowNotes,
      length: this.newPostLength,
      video: this.newPostVideo,
      category: this.newPostCategory,
      series: this.newPostSeries
    }

    this.adapter.createPost(formData).then(post => {
      this.posts.push(new Post(post))
      this.render()
    })
  }

  fetchAndLoadPosts() {
    this.adapter
      .getPosts()
      .then(posts => {
        posts.forEach(post => this.posts.push(new Post(post)))
	console.log(this.posts)
      })
      .then( () => {
	this.render()
      })
  }

  render() { this.postsList.innerHTML = this.posts.map(post => post.renderCard()).join('') }
}
