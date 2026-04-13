.class public Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/H2MessageConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http2/H2MessageConverter<",
        "Lorg/apache/hc/core5/http/HttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;->INSTANCE:Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lorg/apache/hc/core5/http/HttpMessage;)Ljava/util/List;
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpResponse;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;->convert(Lorg/apache/hc/core5/http/HttpResponse;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/apache/hc/core5/http/HttpResponse;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    const/16 v1, 0x258

    if-ge v0, v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, ":status"

    invoke-direct {v2, v4, v0, v3}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/Header;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Connection"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Upgrade"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-static {v2}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Header \'%s: %s\' is illegal for HTTP/2 messages"

    invoke-direct {p1, v1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Header name \'%s\' is invalid"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Response status %s is invalid"

    invoke-direct {p1, v1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;->convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)",
            "Lorg/apache/hc/core5/http/HttpResponse;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, ":status"

    if-ge v3, v5, :cond_8

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/hc/core5/http/Header;

    invoke-interface {v5}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    move v9, v2

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Header name \'%s\' is invalid (header name contains uppercase characters)"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_3

    move-object v4, v8

    goto :goto_3

    :cond_3
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Multiple \'%s\' response headers are illegal"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Unsupported response header \'%s\'"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Invalid sequence of headers (pseudo-headers must precede message headers)"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v6, "Connection"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "Keep-Alive"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "Transfer-Encoding"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "Upgrade"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-interface {v5}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Header \'%s: %s\' is illegal for HTTP/2 messages"

    invoke-direct {p1, v1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_8
    if-eqz v4, :cond_a

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    invoke-direct {v3, p1, v1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(ILjava/lang/String;)V

    sget-object p1, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-interface {v3, p1}, Lorg/apache/hc/core5/http/HttpMessage;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/Header;

    invoke-interface {v3, p1}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    return-object v3

    :catch_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Invalid response status: "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Mandatory response header \'%s\' not found"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
