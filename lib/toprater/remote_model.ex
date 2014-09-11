defmodule RemoteModel do

  HTTPotion.start

  defmacro __using__(_opts) do
    quote do
      
      @api_endpoint "http://5.9.141.34/api/v1"

      def fetch(uri, params) do
        {:ok, params_json} = JSEX.encode params
        json = HTTPotion.get("#{ @api_endpoint }/hotels/#{ uri }?p=#{ params_json }").body
        JSEX.decode json
      end

    end
  end

end
