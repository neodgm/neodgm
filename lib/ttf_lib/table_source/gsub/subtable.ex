defprotocol TTFLib.TableSource.GSUB.Subtable do
  @type t :: struct()

  @spec compile(t(), keyword) :: binary()
  def compile(subtable, opts)
end
