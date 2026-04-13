.class public final Lorg/apache/hc/core5/net/URIAuthority;
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
.field private final host:Lorg/apache/hc/core5/net/Host;

.field private final userInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIAuthority;->userInfo:Ljava/lang/String;

    new-instance p1, Lorg/apache/hc/core5/net/Host;

    invoke-direct {p1, p2, p3}, Lorg/apache/hc/core5/net/Host;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIAuthority;->host:Lorg/apache/hc/core5/net/Host;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/net/Host;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Host"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIAuthority;->userInfo:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/hc/core5/net/URIAuthority;->host:Lorg/apache/hc/core5/net/Host;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Endpoint"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIAuthority;->userInfo:Ljava/lang/String;

    new-instance p1, Lorg/apache/hc/core5/net/Host;

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result p2

    invoke-direct {p1, v0, p2}, Lorg/apache/hc/core5/net/Host;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIAuthority;->host:Lorg/apache/hc/core5/net/Host;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/net/Host;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/Host;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/net/NamedEndpoint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIAuthority;
    .locals 3

    invoke-static {p0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/util/Tokenizer$Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;-><init>(II)V

    invoke-static {p0, v0}, Lorg/apache/hc/core5/net/URIAuthority;->parse(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "Unexpected content"

    invoke-static {p0, v0, v1}, Lorg/apache/hc/core5/net/URISupport;->createException(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/String;)Ljava/net/URISyntaxException;

    move-result-object p0

    throw p0
.end method

.method public static format(Lorg/apache/hc/core5/net/URIAuthority;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lorg/apache/hc/core5/net/URIAuthority;->format(Ljava/lang/StringBuilder;Lorg/apache/hc/core5/net/URIAuthority;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/StringBuilder;Lorg/apache/hc/core5/net/URIAuthority;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/hc/core5/net/URIAuthority;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/net/URIAuthority;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/hc/core5/net/Host;->format(Ljava/lang/StringBuilder;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/net/URIAuthority;
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/util/Tokenizer$Cursor;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;-><init>(II)V

    invoke-static {p0, v0}, Lorg/apache/hc/core5/net/URIAuthority;->parse(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Lorg/apache/hc/core5/net/URIAuthority;
    .locals 4

    sget-object v0, Lorg/apache/hc/core5/util/Tokenizer;->INSTANCE:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    sget-object v2, Lorg/apache/hc/core5/net/URISupport;->HOST_SEPARATORS:Ljava/util/BitSet;

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/hc/core5/util/Tokenizer;->parseContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/hc/core5/net/Host;->parse(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Lorg/apache/hc/core5/net/Host;

    move-result-object p0

    new-instance p1, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-direct {p1, v0, p0}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/Host;)V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/hc/core5/net/URIAuthority;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/hc/core5/net/URIAuthority;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIAuthority;->userInfo:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/hc/core5/net/URIAuthority;->userInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIAuthority;->host:Lorg/apache/hc/core5/net/Host;

    iget-object p1, p1, Lorg/apache/hc/core5/net/URIAuthority;->host:Lorg/apache/hc/core5/net/Host;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIAuthority;->host:Lorg/apache/hc/core5/net/Host;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/Host;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIAuthority;->host:Lorg/apache/hc/core5/net/Host;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/Host;->getPort()I

    move-result v0

    return v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIAuthority;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIAuthority;->userInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIAuthority;->host:Lorg/apache/hc/core5/net/Host;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/hc/core5/net/URIAuthority;->format(Lorg/apache/hc/core5/net/URIAuthority;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
