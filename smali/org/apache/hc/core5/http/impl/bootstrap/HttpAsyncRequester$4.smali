.class Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$4;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->doTlsUpgrade(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/CallbackContribution<",
        "Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

.field final synthetic val$ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/reactor/ProtocolIOSession;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$4;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$4;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$4;->val$ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$4;->completed(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$4;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$4;->val$ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
