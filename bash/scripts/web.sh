if command -v web &>/dev/null; then
	alias mdn='web --engine=mdn'
	alias npmjs='web --engine=npm'
	alias github='web --engine=github'
	alias youtube='web --engine=youtube'
	alias yt='web --engine=youtube'
	alias ff='web --browser=firefox'
fi

domain() {
	paste -d ' ' <(printf "Created On:\nExpires On:\nUpdated On:") <(
		curl --silent -L "https://www.whois.com/whois/$1" |
			grep -E "Registered On:|Expires On:" |
			grep -Eo '[0-9]{4}-[0-9]{2}-[0-9]{2}'
	)
}
