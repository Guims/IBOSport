.class public final Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/H2MessageConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http2/H2MessageConverter<",
        "Lorg/apache/hc/core5/http/HttpRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;->INSTANCE:Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;

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

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;->convert(Lorg/apache/hc/core5/http/HttpRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/apache/hc/core5/http/HttpRequest;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "CONNECT request path must be null"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "CONNECT request authority is not set"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/hc/core5/http/message/BasicHeader;

    const-string v3, ":method"

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, ":authority"

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v3

    invoke-direct {v0, v2, v3, v5}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    const-string v3, ":scheme"

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v3

    invoke-direct {v0, v2, v3, v5}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    const-string v2, ":path"

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v5}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

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

    if-nez v4, :cond_8

    const-string v4, "Connection"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Header \'%s: %s\' is illegal for HTTP/2 messages"

    if-nez v4, :cond_7

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "Proxy-Connection"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "Host"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "Upgrade"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "TE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "trailers"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v5, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_6
    :goto_3
    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-static {v2}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v5, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_8
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Header name \'%s\' is invalid"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_9
    return-object v1

    :cond_a
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Request path is not set"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Request scheme is not set"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Request method is empty"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;->convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpRequest;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)",
            "Lorg/apache/hc/core5/http/HttpRequest;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    const/4 v6, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, ":method"

    const-string v9, ":authority"

    const-string v10, ":path"

    const-string v11, ":scheme"

    if-ge v6, v7, :cond_f

    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/hc/core5/http/Header;

    invoke-interface {v12}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v15, v2, :cond_2

    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v1, "Header name \'%s\' is invalid (header name contains uppercase characters)"

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    const-string v2, ":"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v12, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v12, 0x3

    goto :goto_3

    :sswitch_1
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v12, 0x2

    goto :goto_3

    :sswitch_2
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v12, 0x1

    goto :goto_3

    :sswitch_3
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    const-string v2, "Multiple \'%s\' request headers are illegal"

    packed-switch v12, :pswitch_data_0

    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v1, "Unsupported request header \'%s\'"

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    if-nez v5, :cond_7

    move-object v5, v14

    goto/16 :goto_5

    :cond_7
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    if-nez v3, :cond_8

    move-object v3, v14

    goto/16 :goto_5

    :cond_8
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_2
    if-nez v1, :cond_9

    move-object v1, v14

    goto :goto_5

    :cond_9
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_3
    move-object v4, v14

    goto :goto_5

    :cond_a
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v1, "Invalid sequence of headers (pseudo-headers must precede message headers)"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v2, "Connection"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v8, "Header \'%s: %s\' is illegal for HTTP/2 messages"

    if-nez v2, :cond_e

    const-string v2, "Keep-Alive"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "Proxy-Connection"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "Host"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "Upgrade"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "TE"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "trailers"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-interface {v12}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_d
    :goto_4
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_e
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-interface {v12}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_f
    const-string v2, "Mandatory request header \'%s\' not found"

    if-eqz v1, :cond_17

    sget-object v6, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v6, v1}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    if-eqz v4, :cond_12

    const-string v2, "Header \'%s\' must not be set for CONNECT request"

    if-nez v3, :cond_11

    if-nez v5, :cond_10

    goto :goto_6

    :cond_10
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_11
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_12
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v1, "Header \'%s\' is mandatory for CONNECT request"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_13
    if-eqz v3, :cond_16

    if-eqz v5, :cond_15

    :goto_6
    new-instance v2, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    invoke-direct {v2, v1, v5}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-interface {v2, v1}, Lorg/apache/hc/core5/http/HttpMessage;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    invoke-interface {v2, v3}, Lorg/apache/hc/core5/http/HttpRequest;->setScheme(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v4}, Lorg/apache/hc/core5/net/URIAuthority;->create(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/hc/core5/http/HttpRequest;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2, v5}, Lorg/apache/hc/core5/http/HttpRequest;->setPath(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http/Header;

    invoke-interface {v2, v3}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_15
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_16
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_17
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f6857b7 -> :sswitch_3
        -0x4410c265 -> :sswitch_2
        -0x39f55da1 -> :sswitch_1
        0x365b75f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
