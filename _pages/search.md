---
title: Search results
toc: false
contribute: false
---
<script>

  const query = decodeURIComponent(window.location.search.replace(/^\?q=/, '')).replace(/[^a-zA-Z0-9 ]+/g, ' ').trim();

  document.title = `Search - ${query}`;
  $('#search-input').val(query);

  var client = algoliasearch('---', '---');
  var index = client.initIndex('flowcrypt');

  var searchConfig = { query, hitsPerPage: 10 };



  const escape = (text) => String(text).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;").replace(/'/g, "&#039;");



  index.search(searchConfig, (err, data) => {
    var div = $('<div/>');
    if (err) {
      console.log(err);
      const ddgLink = escape(`https://duckduckgo.com/?q=${encodeURIComponent(query + ' site:flowcrypt.com/docs')}`);
      const pre = '<pr' + 'e>' + escape(err) + '</pr' + 'e>'; // else my IDE gets confused at the < pre >
      div.append(`<p>Error searching docs: ${pre}</p><br><p>Try a search engine instead:<br><a href="${ddgLink}" target="_blank">${ddgLink}&nbsp;<i class='fa fa-external-link'></i></a></p>`);
    } else if(data.hits.length) {
      for(const hit of data.hits) {
        if (hit._highlightResult.content.value.length > 450) {
          hit._highlightResult.content.value = hit._highlightResult.content.value.slice(0, 450) + '...'
        }
        var h = $('<div/>', { class: 'search-title' });
        h.append($('<a/>', { href: hit.url }).html(hit.hierarchy.lvl0));
        var r = $('<div/>', { class: 'search-item' });
        r.append(h);
        r.append($('<div/>', { class: 'search-link' }).html(hit.url));
        r.append($('<div/>', { class: 'search-snippet' }).html(hit._highlightResult.content.value));
        div.append(r);
      }
    } else {
      div.append($('<p>No results.</p>'));
    }
    $('.post-content').html(div);
    $('.post-content').append('<img class="search-by-algolia" src="{{ 'images/algolia.svg' | relative_url }}" />');
  });
</script>