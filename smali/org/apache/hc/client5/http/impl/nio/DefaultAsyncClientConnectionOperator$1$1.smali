.class Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;
.super Lorg/apache/hc/core5/concurrent/FutureContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/FutureContribution<",
        "Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;

.field final synthetic val$connection:Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;

.field final synthetic val$socketTimeout:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;Lorg/apache/hc/core5/concurrent/BasicFuture;Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;->val$connection:Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;->val$socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/FutureContribution;-><init>(Lorg/apache/hc/core5/concurrent/BasicFuture;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;->completed(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;->val$connection:Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;->val$socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {p1, v0}, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;

    iget-object p1, p1, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;->val$connection:Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method
