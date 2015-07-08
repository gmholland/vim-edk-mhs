if exists("b:current_syntax")
	finish
endif

" MHS files are case insensitive
syntax case ignore

syntax keyword mhsType bus_interface parameter port
syntax keyword mhsKeyword position
syntax keyword mhsKeyword version
syntax keyword mhsKeyword hw_ver instance
syntax keyword mhsKeyword buffer_type clk_freq differential_polarity dir rst_polarity sensitivity sigis vec

syntax keyword mhsParameterValue bufgdll ibufg bufgp ibuf bufr none
syntax keyword mhsParameterValue i o io
syntax keyword mhsParameterValue edge_falling edge_rising level_high level_low clk interrupt rst
syntax keyword mhsParameterValue net_gnd net_vcc

syntax match mhsComment "\v#.*$"

syntax match mhsOperator "\v\&"

syntax match mhsNumber "\v<\d+>"
syntax match mhsNumber "\v<0x[0-9a-f]+>"
syntax match mhsNumber "\v<0b[01]+>"

syntax match mhsVector "\v\[\d+:\d+\]"

syntax match mhsParameterVersion "\v\d+\.\d+.\d+"
syntax match mhsHwVersion "\v\d+\.\d\d.[a-z]"

syntax region mhsString start=/\v"/ skip=/\v\\./ end=/\v"/

syntax region mhsBlock matchgroup=Keyword start="^BEGIN" end="^END" transparent fold


highlight link mhsType Type
highlight link mhsKeyword Keyword
highlight link mhsParameterValue Type
highlight link mhsComment Comment
highlight link mhsOperator Operator
highlight link mhsNumber Number
highlight link mhsVector Number
highlight link mhsParameterVersion Number
highlight link mhsHwVersion Number
highlight link mhsString String

let b:current_syntax = "mhs"
