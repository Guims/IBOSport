.class Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->sendResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;

.field final synthetic val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->this$1:Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->this$1:Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->this$1:Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrailerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getTrailerNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->this$1:Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;->this$1:Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
.end method
