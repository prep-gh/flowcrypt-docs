---
title: Search results
toc: false
contribute: false
---

Loading..

<script>

  const query = decodeURIComponent(window.location.search.replace(/^\?q=/, '')).replace(/[^a-zA-Z0-9 ]+/g, ' ').trim();
  const escape = (text) => String(text).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;").replace(/'/g, "&#039;");
  document.title = `Search - ${query}`;
  $('#search-input').val(query);

  $.ajax({
    url: `https://api.addsearch.com/v1/search/c9cd95de6047f8b4f05503f2eb80693c?term=${encodeURIComponent(query)}`,
    success: function(data){
      console.log(data);
      var div = $('<div class="search-results" />');
      if(data.hits.length) {
        for(const hit of data.hits) {
          console.log(hit);
          div.append(`<div><a href="${escape(hit.url)}">${escape(hit.title)}</a><div>${escape(hit.url)}</div><p>${hit.highlight}</p></div>`)
        }
      } else {
        div.append($('<div>No results. Please write us at human@flowcrypt.com</div>'));
      }
      $('.post-content').html(div);
    },
    error: function(XMLHttpRequest, textStatus, err) {
      console.error(XMLHttpRequest);
      console.error(err);
      const ddgLink = escape(`https://duckduckgo.com/?q=${encodeURIComponent(query + ' site:flowcrypt.com/docs')}`);
      const pre = '<pr' + 'e>' + escape(err) + '</pr' + 'e>'; // else my IDE gets confused at the < pre >
      $('.post-content').html(`<p>Error searching docs: ${pre}</p><br><p>Try a search engine instead:<br><a href="${ddgLink}" target="_blank">${ddgLink}&nbsp;<i class='fa fa-external-link'></i></a></p>`);
    }
  });

</script>