.class Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/EntityDetails;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2;->triggerResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2$1;->this$1:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentEncoding()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2$1;->this$1:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2;

    iget-object v0, v0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2;->val$response:Lorg/apache/hc/core5/http/HttpResponse;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2$1;->this$1:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2;

    iget-object v0, v0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler$2;->val$response:Lorg/apache/hc/core5/http/HttpResponse;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
