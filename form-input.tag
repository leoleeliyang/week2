<form-input>
	<div class="profile">
		<div class="userForm">
			<div>
				<label for="image">Image URL</label>
				<input id="image" type="text" onkeyup={ updateImageURL } placeholder="Enter URL">
			</div>
			<div>
				<label for="description">Description</label>
				<textarea id="description" rows="8" cols="40" value={ description } onkeyup={ updateDescription }></textarea>
			</div>
		</div>

		<div class="preview">
			<h2>Ready to massage me??</h2>
			<div class="preview-profile">
				<div class="thumb">
					<img src={ imageURL } alt="user image" />
					<h1>{ description }</h1>
				</div>
			</div>
		</div>
	</div>

	<script>


		this.imageURL="https://im.indiatimes.in/content/2017/Apr/maru1_1493464697.jpg";
		this.description="MASSAGE ME! DO NOT STOP!";



		updateImageURL(event) {
			this.imageURL = event.target.value;
		}

		updateDescription(event) {
			console.log(event);
			<!-- https://developer.mozilla.org/en-US/docs/Web/API/Event/target -->
			this.description = event.target.value;
		}
	</script>


	<style>
		:scope {
			display: block;
			background: GREY;
			color: #333;
			padding: 15px;
		}
		h2 {
			border-bottom: 1px solid #CCC;
		}
		div {
			padding: 15px;
		}
		.userForm div, .preview div {
			padding: 0 0 10px 0;
		}
		.userForm, .preview {
			flex-grow: 1;
		}
		code {
			background: #DDD;
			border-radius: 4px;
			padding: 0 4px 1px;
			color: #333;
		}
		label {
			display: block;
		}
		.profile {
			display: flex;
			/*width: 100%;*/
		}
		.userForm {
			/*display: flex;*/
		}
		.preview-profile {
			display: flex;
		}
		.preview-profile .thumb {
			box-sizing: border-box;
			min-width: 150px;
			border: 1px solid #DDD;
			padding: 4px;
			line-height: 0;
		}
		.preview-profile img {
			width: 100%;
			margin: 0;
			padding: 0;
		}
		.preview-profile p {
			margin-left: 15px;
			margin-top: 0;
		}
	</style>
</form-input>
