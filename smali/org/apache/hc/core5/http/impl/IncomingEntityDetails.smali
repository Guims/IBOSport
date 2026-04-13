.class public Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/EntityDetails;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final contentLength:J

.field private final message:Lorg/apache/hc/core5/http/MessageHeaders;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/MessageHeaders;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;-><init>(Lorg/apache/hc/core5/http/MessageHeaders;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/MessageHeaders;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Message"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/MessageHeaders;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;->message:Lorg/apache/hc/core5/http/MessageHeaders;

    iput-wide p2, p0, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;->contentLength:J

    return-void
.end method


# virtual methods
.method public getContentEncoding()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;->message:Lorg/apache/hc/core5/http/MessageHeaders;

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

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;->message:Lorg/apache/hc/core5/http/MessageHeaders;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;->message:Lorg/apache/hc/core5/http/MessageHeaders;

    const-string v1, "Trailer"

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/apache/hc/core5/http/message/MessageSupport;->parseTokens(Lorg/apache/hc/core5/http/Header;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
