.class Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;
.super Lorg/apache/hc/core5/http/message/HttpResponseWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;->handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;

.field final synthetic val$responseCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;Lorg/apache/hc/core5/http/HttpResponse;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;->val$responseCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method private ensureNotCommitted()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;->val$responseCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Response already committed"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;->ensureNotCommitted()V

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/message/AbstractMessageWrapper;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCode(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;->ensureNotCommitted()V

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->setCode(I)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;->ensureNotCommitted()V

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/message/AbstractMessageWrapper;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;->ensureNotCommitted()V

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;->ensureNotCommitted()V

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->setReasonPhrase(Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$1;->ensureNotCommitted()V

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/message/AbstractMessageWrapper;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    return-void
.end method
