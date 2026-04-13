.class Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1$1;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V
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
.field final synthetic this$1:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;

.field final synthetic val$ioSession:Lorg/apache/hc/core5/reactor/IOSession;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1$1;->this$1:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1$1;->val$ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1$1;->completed(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1$1;->this$1:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;

    iget-object p1, p1, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1$1;->val$ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    return-void
.end method
