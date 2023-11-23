//Caching selector
home 		= $('#home');
downloads	= $('#downloads');
guide		= $('#guide');
community 	= $('#community');
news		= $('#news');
donate		= $('#donate');
faq		    = $('#faq');

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

	else if(gTo === 'news') {
		news.trigger('click');
		news.addClass('lock');
	}

	else if(gTo === 'donate') {
		donate.trigger('click');
		donate.addClass('lock');
	}

	else if(gTo === 'faq') {
		faq.trigger('click');
		faq.addClass('lock');
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
    interval: 3000 //changes the speed
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
$(document).off('click', '#downloads, .downloads');
$(document).on('click', '#downloads, .downloads', function(e) {

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

//Faq
$(document).off('click', '#faq');
$(document).on('click', '#faq', function(e) {

	//Check if isn't lock
	if($('#faq').hasClass('lock'))
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
	$('#faq').addClass('lock');

	//Push the new url
	history.pushState({}, null, 'faq.html');

	//Loading
	spawnLoad('load');

	//Empty the container
	$('.result').empty().hide();

	//Get the target content
	$.get('faq.html', function(msg) {

		//Replace the new url
		history.replaceState({}, null, 'faq.html');

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
		document.title = 'FAQ - Frequently asked questions<';
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

//News
$(document).off('click', '#news');
$(document).on('click', '#news', function(e) {

	//Check if isn't lock
	if($('#news').hasClass('lock'))
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
	$('#news').addClass('lock');

	//Push the new url
	history.pushState({}, null, 'news.html');

	//Loading
	spawnLoad('load');

	//Empty the container
	$('.result').empty().hide();

	//Get the target content
	$.get('news.html', function(msg) {

		//Replace the new url
		history.replaceState({}, null, 'news.html');

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

$(document).off('click', '.act-bitcoin');
$(document).on('click', '.act-bitcoin', function() {

	$('.act-display').hide().empty();
	$('.act-display').html('1KiXHGytUEo4Ug6Pjnmf7bs9ss3Ay1w5Uy').fadeIn();
});

$(document).off('click', '.act-cash');
$(document).on('click', '.act-cash', function() {

	$('.act-display').hide().empty();
	$('.act-display').html('Available soon').fadeIn();
});

$(document).off('click', '.act-cc');
$(document).on('click', '.act-cc', function() {

	$('.act-display').hide().empty();
	$('.act-display').html('Available soon').fadeIn();
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

// Add tools search
function searchTools() {
  var input, filter, table, tr, td, i, txtValue, tdDescription, txtDescription;
  input = document.getElementById("searchTools");
  filter = input.value.toUpperCase();
  table = document.getElementById("tbl-minimalist");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    tdDescription = tr[i].getElementsByTagName("td")[2];
    if (td || tdDescription) {
      txtValue = td.textContent || td.innerText;
	  txtDescription = tdDescription.textContent || tdDescription.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1 || txtDescription.toUpperCase().indexOf(filter)> -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
