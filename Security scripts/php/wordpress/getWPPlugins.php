<?PHP
  // Based on some Original PHP code by Chirp Internet: www.chirp.com.au
  // Please acknowledge use of this code by including this header.

  function robots_allowed($url, $useragent=false)
  {
    // parse url to retrieve host and path
    $parsed = parse_url($url);

    $agents = array(preg_quote('*'));
    if($useragent) $agents[] = preg_quote($useragent);
    $agents = implode('|', $agents);

    // location of robots.txt file
    $robotstxt = @file("http://{$parsed['host']}/robots.txt");

    // if there isn't a robots, then we're allowed in
    if(empty($robotstxt)) return true;

    $rules = array();
    $ruleApplies = false;
    foreach($robotstxt as $line) {
      // skip blank lines
      if(!$line = trim($line)) continue;

      // following rules only apply if User-agent matches $useragent or '*'
      if(preg_match('/^\s*User-agent: (.*)/i', $line, $match)) {
        $ruleApplies = preg_match("/($agents)/i", $match[1]);
      }
      if($ruleApplies && preg_match('/^\s*Disallow:(.*)/i', $line, $regs)) {
        // an empty rule implies full access - no further tests required
        if(!$regs[1]) return true;
        // add rules that apply to array for testing
        $rules[] = preg_quote(trim($regs[1]), '/');
      }
    }

    foreach($rules as $rule) {
      // check if page is disallowed to us
      if(preg_match("/^$rule/", $parsed['path'])) return false;
    }

    // page is not disallowed
    return true;
  }


  ini_set('user_agent', 'Cryptonot.es <http://cryptonot.es/2016/03/06/map-sh-update/> ');

  $url = "http://plugins.svn.wordpress.org/";
  if(robots_allowed($url, "NameOfAgent")) {
    $input = @file_get_contents($url) or die("Could not access file: $url");
    $regexp = "<a\s[^>]*href=(\"??)([^\" >]*?)\\1[^>]*>(.*)<\/a>";
    if(preg_match_all("/$regexp/siU", $input, $matches, PREG_SET_ORDER)) {
      foreach($matches as $match) {
        // $match[2] = link address
        // $match[3] = link text
        if ($match[2] != "index.html" ) {
		echo ("wget -nc -r " . $url . $match[2] . "trunk/ ");
		shell_exec("wget -nc -np -r " . $url . $match[2] . "trunk/ ");
	}
      }
    }
  } else {
    die('Access denied by robots.txt');
  }
?>
