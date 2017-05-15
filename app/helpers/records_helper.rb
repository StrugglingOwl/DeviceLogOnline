module RecordsHelper
  def render_record_summary(record)
    simple_format(record.summary)
  end

  def render_record_resolution(record)
    simple_format(record.resolution)
  end

end
