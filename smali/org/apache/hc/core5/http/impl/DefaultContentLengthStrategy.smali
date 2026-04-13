.class public Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/ContentLengthStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/hc/core5/http/HttpMessage;)J
    .locals 5

    const-string v0, "Negative content length: "

    const-string v1, "HTTP message"

    invoke-static {p1, v1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Transfer-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/NotImplementedException;

    const-string v1, "Unsupported transfer encoding: "

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "Content-Length"

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->countHeaders(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_4

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    return-wide v1

    :cond_2
    new-instance v1, Lorg/apache/hc/core5/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v1, "Invalid content length: "

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Multiple Content-Length headers"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
