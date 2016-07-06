//Caching selector
home 		= $('#home');
downloads	= $('#downloads');
guide		= $('#guide');
community 	= $('#community');
blog		= $('#blog');
donate		= $('#donate');

//Function - spawnLoad
function spawnLoad(TrigLoad) {

	if(TrigLoad === 'load') {
		TrigLoad = $('body').append('<div id=loadGen><p><i class="fa fa-cog fa-spin"></i>Loading...</p></div>');
		return TrigLoad;
	}

	else if(TrigLoad === 'kill')
		$('#loadGen').remove();

	else
		return;
}

//Regex url
regUrl = /^http:\/\/blackarch\.org\/([a-z]+)\.html/;

//Retrieve actual URL and get the target substring
subUrl = regUrl.exec(location.href);

//Popstat function
function pop() {

	//If null, set the homepage, otherwise get the value indicated
	gTo = (subUrl === undefined || subUrl === null) ? '' : subUrl[1];

	if(gTo === 'index') {
		home.trigger('click');
		home.addClass('lock');
	}

	else if(gTo === 'downloads') {
		downloads.trigger('click');
		downloads.addClass('lock');
	}

	else if(gTo === 'guide') {
		guide.trigger('click');
		guide.addClass('lock');
	}

	else if(gTo === 'community') {
		community.trigger('click');
		community.addClass('lock');
	}

	else if(gTo === 'blog') {
		blog.trigger('click');
		blog.addClass('lock');
	}

	else if(gTo === 'donate') {
		donate.trigger('click');
		donate.addClass('lock');
	}

	else
		return;
}

//On load (first 'real') load, popped = true and avoid popstate
popped = ('state' in window.history), initialURL = location.href;

//Event on back/next popstate (except on load)
$(window).bind('popstate', pop);

/* On load */
$(document).ready(function() {
	//Push the url load (popstate)
	if(popped)
		pop();
});

//Cancel anchors on the menu link
$(document).off('click', '.nav');
$(document).on('click', '.nav', function(e) {
	if(e.target.tagName.toLowerCase() === 'a')
		e.preventDefault();
});

//Slider
$('.carousel').carousel({
    interval: 5000 //changes the speed
})

//Home
$(document).off('click', '#home, .home');
$(document).on('click', '#home, .home', function(e) {

	//Check if isn't lock
	if($('#home').hasClass('lock'))
		return;

	//Load by url, return (don't need to execute the code)
	if(e.target.tagName.toLowerCase() === 'li')
		return;

	//Drop anchors follow
	if(e.target.tagName.toLowerCase() === 'a')
		e.preventDefault();

	//Remove any possible lock
	if($('.lock').length > 0)
		$('.lock').removeClass();

	//Add lock class for avoid any double load (fast clic or whatever...)
	$('#home').addClass('lock');

	//Push the new url
	history.pushState({}, null, 'index.html');

	//Loading
	spawnLoad('load');

	//Empty the container
	$('.result').empty().hide();

	//Get the target content
	$.get('index.html', function(msg) {

		//Replace the new url
		history.replaceState({}, null, 'index.html');

		//Push the result in the DOM, into a hidden temp container
		$('<div id=tmp hidden>'+ msg +'</div>').appendTo('body');

		//Extract only the required html
		ctn = $('#tmp').find('.result').html();

		//Push the required into the result container
		$('.result').append(ctn).fadeIn('slow');

		//Remove the temp container
		$('#tmp').remove();

		//Remove the loading
		spawnLoad('kill');

		document.title = 'BlackArch Linux - Penetration Testing Distribution';
	});
});

//Downloads
$(document).off('click', '#downloads');
$(document).on('click', '#downloads', function(e) {

	//Check if isn't lock
	if($('#downloads').hasClass('lock'))
		return;

	//Load by url, return (don't need to execute the code)
	if(e.target.tagName.toLowerCase() === 'li')
		return;

	//Drop anchors follow
	if(e.target.tagName.toLowerCase() === 'a')
		e.preventDefault();

	//Remove any possible lock
	if($('.lock').length > 0)
		$('.lock').removeClass();

	//Add lock class for avoid any double load (fast clic or whatever...)
	$('#downloads').addClass('lock');

	//Push the new url
	history.pushState({}, null, 'downloads.html');

	//Loading
	spawnLoad('load');

	//Empty the container
	$('.result').empty().hide();

	//Get the target content
	$.get('downloads.html', function(msg) {

		//Replace the new url
		history.replaceState({}, null, 'downloads.html');

		//Push the result in the DOM, into a hidden temp container
		$('<div id=tmp hidden>'+ msg +'</div>').appendTo('body');

		//Extract only the required html
		ctn = $('#tmp').find('.result').html();

		//Push the required into the result container
		$('.result').append(ctn).fadeIn('slow');

		//Remove the temp container
		$('#tmp').remove();

		//Remove the loading
		spawnLoad('kill');

		//Change the title (<title>)
		document.title = 'Downloads BlackArch';
	});
});

//Guide
$(document).off('click', '#guide, .guide');
$(document).on('click', '#guide, .guide', function(e) {

	//Check if isn't lock
	if($('#guide').hasClass('lock'))
		return;

	//Load by url, return (don't need to execute the code)
	if(e.target.tagName.toLowerCase() === 'li')
		return;

	//Drop anchors follow
	if(e.target.tagName.toLowerCase() === 'a')
		e.preventDefault();

	//Remove any possible lock
	if($('.lock').length > 0)
		$('.lock').removeClass();

	//Add lock class for avoid any double load (fast clic or whatever...)
	$('#guide').addClass('lock');

	//Push the new url
	history.pushState({}, null, 'guide.html');

	//Loading
	spawnLoad('load');

	//Empty the container
	$('.result').empty().hide();

	//Get the target content
	$.get('guide.html', function(msg) {

		//Replace the new url
		history.replaceState({}, null, 'guide.html');

		//Push the result in the DOM, into a hidden temp container
		$('<div id=tmp hidden>'+ msg +'</div>').appendTo('body');

		//Extract only the required html
		ctn = $('#tmp').find('.result').html();

		//Push the required into the result container
		$('.result').append(ctn).fadeIn('slow');

		//Remove the temp container
		$('#tmp').remove();

		//Remove the loading
		spawnLoad('kill');

		//Change the title (<title>)
		document.title = 'Guide of BlackArch';
	});
});

//Community
$(document).off('click', '#community');
$(document).on('click', '#community', function(e) {

	//Check if isn't lock
	if($('#community').hasClass('lock'))
		return;

	//Load by url, return (don't need to execute the code)
	if(e.target.tagName.toLowerCase() === 'li')
		return;

	//Drop anchors follow
	if(e.target.tagName.toLowerCase() === 'a')
		e.preventDefault();

	//Remove any possible lock
	if($('.lock').length > 0)
		$('.lock').removeClass();

	//Add lock class for avoid any double load (fast clic or whatever...)
	$('#community').addClass('lock');

	//Push the new url
	history.pushState({}, null, 'community.html');

	//Loading
	spawnLoad('load');

	//Empty the container
	$('.result').empty().hide();

	//Get the target content
	$.get('community.html', function(msg) {

		//Replace the new url
		history.replaceState({}, null, 'community.html');

		//Push the result in the DOM, into a hidden temp container
		$('<div id=tmp hidden>'+ msg +'</div>').appendTo('body');

		//Extract only the required html
		ctn = $('#tmp').find('.result').html();

		//Push the required into the result container
		$('.result').append(ctn).fadeIn('slow');

		//Remove the temp container
		$('#tmp').remove();

		//Remove the loading
		spawnLoad('kill');

		//Change the title (<title>)
		document.title = 'Community of BlackArch';
	});
});

//Blog
$(document).off('click', '#blog');
$(document).on('click', '#blog', function(e) {

	//Check if isn't lock
	if($('#blog').hasClass('lock'))
		return;

	//Load by url, return (don't need to execute the code)
	if(e.target.tagName.toLowerCase() === 'li')
		return;

	//Drop anchors follow
	if(e.target.tagName.toLowerCase() === 'a')
		e.preventDefault();

	//Remove any possible lock
	if($('.lock').length > 0)
		$('.lock').removeClass();

	//Add lock class for avoid any double load (fast clic or whatever...)
	$('#blog').addClass('lock');

	//Push the new url
	history.pushState({}, null, 'blog.html');

	//Loading
	spawnLoad('load');

	//Empty the container
	$('.result').empty().hide();

	//Get the target content
	$.get('blog.html', function(msg) {

		//Replace the new url
		history.replaceState({}, null, 'blog.html');

		//Push the result in the DOM, into a hidden temp container
		$('<div id=tmp hidden>'+ msg +'</div>').appendTo('body');

		//Extract only the required html
		ctn = $('#tmp').find('.result').html();

		//Push the required into the result container
		$('.result').append(ctn).fadeIn('slow');

		//Remove the temp container
		$('#tmp').remove();

		//Remove the loading
		spawnLoad('kill');

		//Change the title (<title>)
		document.title = 'Get the last news';
	});
});

//Donate
$(document).off('click', '#donate, .donate');
$(document).on('click', '#donate, .donate', function(e) {

	//Check if isn't lock
	if($('#donate').hasClass('lock'))
		return;

	//Load by url, return (don't need to execute the code)
	if(e.target.tagName.toLowerCase() === 'li')
		return;

	//Drop anchors follow
	if(e.target.tagName.toLowerCase() === 'a')
		e.preventDefault();

	//Remove any possible lock
	if($('.lock').length > 0)
		$('.lock').removeClass();

	//Add lock class for avoid any double load (fast clic or whatever...)
	$('#donate').addClass('lock');

	//Empty the container
	$('.result').empty().hide();

	//Loading
	spawnLoad('load');

	//Get the target content
	$.get('donate.html', function(msg) {

		//Replace the new url
		history.replaceState({}, null, 'donate.html');

		//Push the result in the DOM, into a hidden temp container
		$('<div id=tmp hidden>'+ msg +'</div>').appendTo('body');

		//Extract only the required html
		ctn = $('#tmp').find('.result').html();

		//Push the required into the result container
		$('.result').append(ctn).fadeIn('slow');

		//Remove the temp container
		$('#tmp').remove();

		//Remove the loading
		spawnLoad('kill');

		//Change the title (<title>)
		document.title = 'Donate to BlackArch';
	});
});

//Tools
$(document).off('click', '#tools, .tools');
$(document).on('click', '#tools, .tools', function(e) {

	//Check if isn't lock
	if($('#tools').hasClass('lock'))
		return;

	//Load by url, return (don't need to execute the code)
	if(e.target.tagName.toLowerCase() === 'li')
		return;

	//Drop anchors follow
	if(e.target.tagName.toLowerCase() === 'a')
		e.preventDefault();

	//Remove any possible lock
	if($('.lock').length > 0)
		$('.lock').removeClass();

	//Add lock class for avoid any double load (fast clic or whatever...)
	$('#tools').addClass('lock');

	//Empty the container
	$('.result').empty().hide();

	//Loading
	spawnLoad('load');

	//Get the target content
	$.get('tools.html', function(msg) {

		//Replace the new url
		history.replaceState({}, null, 'tools.html');

		//Push the result in the DOM, into a hidden temp container
		$('<div id=tmp hidden>'+ msg +'</div>').appendTo('body');

		//Extract only the required html
		ctn = $('#tmp').find('.result').html();

		//Push the required into the result container
		$('.result').append(ctn).fadeIn('slow');

		//Remove the temp container
		$('#tmp').remove();

		//Remove the loading
		spawnLoad('kill');

		//Change the title (<title>)
		document.title = 'Tools in BlackArch';
	});
});