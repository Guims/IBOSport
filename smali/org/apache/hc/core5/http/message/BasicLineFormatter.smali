.class public Lorg/apache/hc/core5/http/message/BasicLineFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/message/LineFormatter;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/message/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicLineFormatter;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatHeader(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/Header;)V
    .locals 3

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v1, 0x20

    :cond_1
    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public formatProtocolVersion(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/ProtocolVersion;)V
    .locals 0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/ProtocolVersion;->format()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public formatRequestLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/message/RequestLine;)V
    .locals 2

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Request line"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/message/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/message/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/message/RequestLine;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicLineFormatter;->formatProtocolVersion(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/ProtocolVersion;)V

    return-void
.end method

.method public formatStatusLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/message/StatusLine;)V
    .locals 2

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Status line"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/message/StatusLine;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/message/BasicLineFormatter;->formatProtocolVersion(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/ProtocolVersion;)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/message/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/message/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
