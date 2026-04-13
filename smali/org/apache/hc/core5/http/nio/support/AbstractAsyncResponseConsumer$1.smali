.class Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/CallbackContribution<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer;

.field final synthetic val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

.field final synthetic val$response:Lorg/apache/hc/core5/http/HttpResponse;

.field final synthetic val$resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    iput-object p4, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;->val$response:Lorg/apache/hc/core5/http/HttpResponse;

    iput-object p5, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;->val$resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public completed(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http/ContentType;->parse(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;->val$response:Lorg/apache/hc/core5/http/HttpResponse;

    invoke-virtual {v1, v2, p1, v0}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer;->buildResult(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/Object;Lorg/apache/hc/core5/http/ContentType;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;->val$resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer$1;->val$resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
