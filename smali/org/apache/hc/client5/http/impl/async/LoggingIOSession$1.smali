.class Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;

.field final synthetic val$handler:Lorg/apache/hc/core5/reactor/IOEventHandler;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;Lorg/apache/hc/core5/reactor/IOEventHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->val$handler:Lorg/apache/hc/core5/reactor/IOEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->val$handler:Lorg/apache/hc/core5/reactor/IOEventHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->val$handler:Lorg/apache/hc/core5/reactor/IOEventHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->val$handler:Lorg/apache/hc/core5/reactor/IOEventHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method

.method public inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->access$000(Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;)LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;

    const-string v2, "<< "

    invoke-static {v1, v0, v2}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->access$100(Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->val$handler:Lorg/apache/hc/core5/reactor/IOEventHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->val$handler:Lorg/apache/hc/core5/reactor/IOEventHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;->val$handler:Lorg/apache/hc/core5/reactor/IOEventHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method
