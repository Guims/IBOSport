.class Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer$1;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/CallbackContribution<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer;

.field final synthetic val$response:Lorg/apache/hc/core5/http/HttpResponse;

.field final synthetic val$resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer$1;->val$response:Lorg/apache/hc/core5/http/HttpResponse;

    iput-object p4, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer$1;->val$resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public completed(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/Message;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer$1;->val$response:Lorg/apache/hc/core5/http/HttpResponse;

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http/Message;-><init>(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer$1;->val$resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
