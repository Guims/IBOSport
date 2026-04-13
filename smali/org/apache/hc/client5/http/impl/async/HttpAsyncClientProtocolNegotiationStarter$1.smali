.class Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/impl/Http1StreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;->this$0:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExchangeComplete(Lorg/apache/hc/core5/http/HttpConnection;Z)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->access$100()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->access$100()LO5/a;

    move-result-object p1

    const-string p2, "{} Connection is kept alive"

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;->val$id:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->access$100()LO5/a;

    move-result-object p1

    const-string p2, "{} Connection is not kept alive"

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;->val$id:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onRequestHead(Lorg/apache/hc/core5/http/HttpConnection;Lorg/apache/hc/core5/http/HttpRequest;)V
    .locals 3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->access$000()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->access$000()LO5/a;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;->val$id:Ljava/lang/String;

    new-instance v1, Lorg/apache/hc/core5/http/message/RequestLine;

    invoke-direct {v1, p2}, Lorg/apache/hc/core5/http/message/RequestLine;-><init>(Lorg/apache/hc/core5/http/HttpRequest;)V

    const-string v2, "{} >> {}"

    invoke-interface {p1, v0, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->access$000()LO5/a;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;->val$id:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResponseHead(Lorg/apache/hc/core5/http/HttpConnection;Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->access$000()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->access$000()LO5/a;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;->val$id:Ljava/lang/String;

    new-instance v1, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {v1, p2}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    const-string v2, "{} << {}"

    invoke-interface {p1, v0, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->access$000()LO5/a;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;->val$id:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
