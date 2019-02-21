<parent-child>
	<div class="memeMaker">
		<!-- ref or reference attribute is a quick way to "bookmark" an element so we can quickly access it in javascript later. -->
		<!-- E.g. HTML <img ref="xxx"/>  -->
		<!-- E.g. JS   this.refs.xxx points to the img tag prior -->
		<input type="text" ref="urlEl" placeholder="Enter url">
		<input type="text" ref="captionEl" placeholder="Enter caption">

		<button type="button" onclick={ addMeme }>Add Meme</button>
	</div>

	<ol>
		<div show={ myMemes.length == 0 }>
			<p>NO MEMEs</p>
		</div>
		<ul each={ myMemes }>
      <div>
        <img src={ url } alt="user image" />
        <h1>{ caption }</h1>
      </div>
			<button type="button" onclick={ parent.remove }>Remove Meme</button>
		</li>
	</ul>


	<script>
    <!-- a js array to store all my Meme info -->
		this.myMemes = [{
			url: "https://pixel.nymag.com/imgs/daily/selectall/2016/08/11/11-gavin.w700.h700.jpg",
			caption: "when i first heard about js"
		},{
			url: "https://proxy.topixcdn.com/ipicimg/PKACK3N1SJ7P27PO-cp0x0x1328x664-fill810x415x",
			caption: "hihi"
		},{
			url: "http://indiannationalnews.com/wp-content/uploads/2017/10/hqdefault-1.jpg",
			caption: "hihihi"
		}];

		this.remove = function(event) {
		//console.log('EVENT:', event);
		//console.log('EVENT.ITEM', event.item);

		//In RiotJS, event.item refers to the book object of the child tag where the click event occurred.
			var memeObj = event.item;

			var index = this.myMemes.indexOf(memeObj);
			this.myMemes.splice(index, 1);
		};

		this.addMeme = function(event) {
      console.log(event);
			var url = this.refs.urlEl.value;
			var caption = this.refs.captionEl.value;

			var meme = {
				url: url,
				caption: caption
			};

			// We are adding a book object to the source of truth array.
			this.myMemes.push(meme);

			// RESET INPUTS
			this.refs.urlEl.value = "";
			this.refs.captionEl.value = "";
		};
	</script>


	<style>
		:scope {
			display: block;
			background: #cddc39;
			padding: 15px;
		}
    img{
      width: 80%;
    }
	</style>

</parent-child>
