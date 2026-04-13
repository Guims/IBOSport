.class Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->consumePromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;

.field final synthetic val$promise:Lorg/apache/hc/core5/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;Lorg/apache/hc/core5/http/HttpRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;->val$promise:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->releaseResources()V

    return-void
.end method

.method public completed(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;->val$promise:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {v0, v1, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->handleResponse(Lorg/apache/hc/core5/http/HttpRequest;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;->val$promise:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {v0, v1, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->handleError(Lorg/apache/hc/core5/http/HttpRequest;Ljava/lang/Exception;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->releaseResources()V

    return-void
.end method
