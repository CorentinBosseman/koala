module ProgramsHelper
  def task_col_class(index, size)
    return "col-12" if index + 1 == size && !(size % 3).zero?

    (index % 3).zero? || index == 0 ? 'col-12' : 'col-6'
  end
end
