require "windows_31j_punctuation/version"

module Windows31jPunctuation
  # Based on [Unicodeの似た文字を整理してみた - y-kawazの日記](https://y-kawaz.hatenadiary.org/entry/20101112/1289554290)
  MAP = {
    # to HYPHEN-MINUS
    "\u002d" => "-", # HYPHEN-MINUS
    "\u2011" => "-", # NON-BREAKING HYPHEN
    "\u2012" => "-", # FIGURE DASH
    "\u2013" => "-", # EN DASH
    "\u2043" => "-", # HYPHEN BULLET
    "\ufe63" => "-", # SMALL HYPHEN-MINUS
    # to FULLWIDTH HYPHEN-MINUS
    "\u2212" => "－", # MINUS SIGN
    "\uff0d" => "－", # FULLWIDTH HYPHEN-MINUS
    # to BOX DRAWINGS LIGHT HORIZONTAL
    "\u2500" => "─", # BOX DRAWINGS LIGHT HORIZONTAL
    # to BOX DRAWINGS HEAVY HORIZONTAL
    "\u2501" => "━", # BOX DRAWINGS HEAVY HORIZONTAL
    # to LOW LINE
    "\u005f" => "_", # LOW LINE
    # to FULLWIDTH LOW LINE
    "\uff3f" => "＿", # FULLWIDTH LOW LINE
    # to FULLWIDTH MACRON
    "\u00af" => "￣", # MACRON
    # to TILDE
    "\u203e" => "~", # OVERLINE
    # to FULLWIDTH MACRON
    "\uffe3" => "￣", # FULLWIDTH MACRON
    # to HORIZONTAL BAR
    "\u2014" => "―", # EM DASH
    "\u2015" => "―", # HORIZONTAL BAR
    # KATAKANA-HIRAGANA PROLONGED SOUND MARK
    "\u30fc" => "ー", # KATAKANA-HIRAGANA PROLONGED SOUND MARK
    # to TILDE
    "\u007e" => "~", # TILDE
    "\u223c" => "~", # TILDE OPERATOR
    "\u223e" => "~", # INVERTED LAZY S
    # to FULLWIDTH TILDE
    "\u301c" => "～", # WAVE DASH
    "\u3030" => "～", # WAVY DASH
    "\uff5e" => "～", # FULLWIDTH TILDE
    # to HORIZONTAL ELLIPSIS
    "\u2026" => "…", # HORIZONTAL ELLIPSIS
    "\u22ef" => "…", # MIDLINE HORIZONTAL ELLIPSIS
    # to HALFWIDTH KATAKANA MIDDLE DOT
    "\u00b7" => "･", # MIDDLE DOT
    "\u2022" => "･", # BULLET
    "\u2219" => "･", # BULLET OPERATOR
    "\u22c5" => "･", # DOT OPERATOR
    # to KATAKANA MIDDLE DOT
    "\u30fb" => "・", # KATAKANA MIDDLE DOT
    # to HALFWIDTH KATAKANA MIDDLE DOT
    "\uff65" => "･", # HALFWIDTH KATAKANA MIDDLE DOT
  }.yield_self {|h|
    [
      h.keys.join.gsub(/([\-\^\\])/) {|m| "\\" + m[0] }.freeze,
      h.values.join.gsub(/([\-\^\\])/) {|m| "\\" + m[0] }.freeze,
    ]
  }.freeze

  class Error < StandardError; end
  # Your code goes here...

  module_function
  def replace!(s)
    s.tr!(*MAP)
    s
  end

  def replace(s)
    replace!(s.dup)
  end
end
