class Post {
  constructor(postJSON) {
    this.id = postJSON.id
    this.video = postJSON.video
    this.title = postJSON.title
    this.show_notes = postJSON.show_notes
    this.length = postJSON.length
    //this.category.name = postJSON.categoryName
    //this.series.name = postJSON.seriesName
    this.created_at = postJSON.created_at
  }

  renderCard() {
    return `
      <div class="post-card">
        <video width="320" height="240" controls>
	  <source src="" type="video/mp4">
	</video>
        <h3>${this.title}</h3>
	<small>${this.length}</small>
	<p>${this.show_notes}</p>
	<small>${this.categoryName}</small>
	<small>${this.seriesName}</small>
      </div>
    `
  }
}
