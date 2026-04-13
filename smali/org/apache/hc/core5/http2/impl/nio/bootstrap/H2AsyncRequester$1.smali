.class Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$1;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;->doTlsUpgrade(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/CallbackContribution<",
        "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$1;->this$0:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$1;->completed(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)V
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$2;->$SwitchMap$org$apache$hc$core5$http2$HttpVersionPolicy:[I

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$1;->this$0:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;

    invoke-static {v1}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;->access$000(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;)Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object v1, v1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    sget-object v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {p1, v0, v1}, Lorg/apache/hc/core5/reactor/ProtocolIOSession;->switchProtocol(Ljava/lang/String;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
