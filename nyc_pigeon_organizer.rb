def nyc_pigeon_organizer(data)
  all_pigeon = []
  data.each {|traits, chars|
    chars.each {|char, piegons|
      all_pigeon.concat(piegons)
    }
  }
  all_pigeon.uniq!
  reformat_pigeon_data = {}
  all_pigeon.each {|pigeon|
    reformat_pigeon_data[pigeon] = {}
    data.each {|traits, chars|
      reformat_pigeon_data[pigeon][traits] = []
      chars.each {|char, pigeon_array|
        if pigeon_array.include?(pigeon)
          reformat_pigeon_data[pigeon][traits].push(char.to_s)
        end
      }
    }
  }
  return reformat_pigeon_data
end
