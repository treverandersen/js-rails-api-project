class PostsAdapter {
  constructor() {
    this.baseUrl = 'http://localhost:3000/api/v1/posts/'
  }

  getPosts() {
    return fetch(this.baseUrl).then(res => res.json())
  }

  createPost(formData) {
    const post = {
      body: formData,
    }
    return fetch(this.baseUrl, {
      method: 'POST',
      headers: {
        'content-type': 'application/json',
      },
      body: JSON.stringify({ post }), 
    }).then(res => res.json())
  }
}
