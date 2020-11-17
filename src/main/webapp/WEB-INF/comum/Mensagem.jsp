<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${! empty mensagemTipo}">
                    <div class="alert alert-${mensagemTipo} alert-dismissible fade show" role="alert">
                         ${mensagem} 
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
</c:if>