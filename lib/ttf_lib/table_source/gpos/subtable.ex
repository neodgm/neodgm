defprotocol TTFLib.TableSource.GPOS.Subtable do
  @type t :: struct()

  @spec compile(t(), keyword) :: binary()
  def compile(subtable, opts)
end
