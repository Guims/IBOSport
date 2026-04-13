.class public final Lorg/apache/hc/core5/net/Host;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/net/NamedEndpoint;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final lcName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Host name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/Host;->name:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/hc/core5/net/Ports;->checkWithDefault(I)I

    move-result p2

    iput p2, p0, Lorg/apache/hc/core5/net/Host;->port:I

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/net/Host;->lcName:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/hc/core5/net/Host;
    .locals 3

    const-string v0, "HTTP Host"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Lorg/apache/hc/core5/util/Tokenizer$Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;-><init>(II)V

    invoke-static {p0, v0}, Lorg/apache/hc/core5/net/Host;->parse(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Lorg/apache/hc/core5/net/Host;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/net/Host;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const-string v1, "Unexpected content"

    invoke-static {p0, v0, v1}, Lorg/apache/hc/core5/net/URISupport;->createException(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/String;)Ljava/net/URISyntaxException;

    move-result-object p0

    throw p0

    :cond_1
    const-string v1, "Hostname is invalid"

    invoke-static {p0, v0, v1}, Lorg/apache/hc/core5/net/URISupport;->createException(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/String;)Ljava/net/URISyntaxException;

    move-result-object p0

    throw p0
.end method

.method public static format(Lorg/apache/hc/core5/net/Host;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lorg/apache/hc/core5/net/Host;->format(Ljava/lang/StringBuilder;Lorg/apache/hc/core5/net/Host;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/StringBuilder;Lorg/apache/hc/core5/net/Host;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/net/Host;->format(Ljava/lang/StringBuilder;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    return-void
.end method

.method public static format(Ljava/lang/StringBuilder;Lorg/apache/hc/core5/net/NamedEndpoint;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/net/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/net/Host;
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/util/Tokenizer$Cursor;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;-><init>(II)V

    invoke-static {p0, v0}, Lorg/apache/hc/core5/net/Host;->parse(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Lorg/apache/hc/core5/net/Host;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Lorg/apache/hc/core5/net/Host;
    .locals 6

    sget-object v0, Lorg/apache/hc/core5/util/Tokenizer;->INSTANCE:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    sget-object v3, Lorg/apache/hc/core5/net/URISupport;->IPV6_HOST_TERMINATORS:Ljava/util/BitSet;

    invoke-virtual {v0, p0, p1, v3}, Lorg/apache/hc/core5/util/Tokenizer;->parseContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v4

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    invoke-static {v3}, Lorg/apache/hc/core5/net/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Expected an IPv6 address"

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/net/URISupport;->createException(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/String;)Ljava/net/URISyntaxException;

    move-result-object p0

    throw p0

    :cond_2
    const-string v0, "Expected an IPv6 closing bracket \']\'"

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/net/URISupport;->createException(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/String;)Ljava/net/URISyntaxException;

    move-result-object p0

    throw p0

    :cond_3
    sget-object v3, Lorg/apache/hc/core5/net/URISupport;->PORT_SEPARATORS:Ljava/util/BitSet;

    invoke-virtual {v0, p0, p1, v3}, Lorg/apache/hc/core5/util/Tokenizer;->parseContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v4

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    sget-object v2, Lorg/apache/hc/core5/net/URISupport;->TERMINATORS:Ljava/util/BitSet;

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/hc/core5/util/Tokenizer;->parseContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_6

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "Expected IPv6 address to be enclosed in brackets"

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/net/URISupport;->createException(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/String;)Ljava/net/URISyntaxException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v0, "Port is invalid"

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/net/URISupport;->createException(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/String;)Ljava/net/URISyntaxException;

    move-result-object p0

    throw p0

    :cond_7
    const/4 p0, -0x1

    :goto_4
    new-instance p1, Lorg/apache/hc/core5/net/Host;

    invoke-direct {p1, v3, p0}, Lorg/apache/hc/core5/net/Host;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/hc/core5/net/Host;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/hc/core5/net/Host;

    iget-object v1, p0, Lorg/apache/hc/core5/net/Host;->lcName:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/hc/core5/net/Host;->lcName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/hc/core5/net/Host;->port:I

    iget p1, p1, Lorg/apache/hc/core5/net/Host;->port:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/Host;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/net/Host;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/hc/core5/net/Host;->lcName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/apache/hc/core5/net/Host;->port:I

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/hc/core5/net/Host;->format(Lorg/apache/hc/core5/net/Host;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
