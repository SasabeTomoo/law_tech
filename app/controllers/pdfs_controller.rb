class PdfsController < ApplicationController
  def sample
    respond_to do |format|
      format.html { redirect_to sample_pdf_path(format: :pdf, debug: 1)}
      format.pdf do
        render pdf: 'sample',
               encoding: 'UTF-8',
               layout: 'pdf.html',
               show_as_html: params[:debug].present?
      end
    end
  end
end
