.class public Lorg/apache/hc/core5/http/message/MessageSupport;
.super Ljava/lang/Object;


# static fields
.field private static final COMMA:Ljava/util/BitSet;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/hc/core5/http/message/MessageSupport;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/16 v0, 0x2c

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/message/MessageSupport;->COMMA:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addContentEncodingHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/EntityDetails;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/EntityDetails;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    :cond_0
    return-void
.end method

.method public static addContentTypeHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    :cond_0
    return-void
.end method

.method public static addTrailerHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Trailer"

    invoke-interface {p0, v0}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/EntityDetails;->getTrailerNames()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http/message/MessageSupport;->format(Ljava/lang/String;Ljava/util/Set;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->setHeader(Lorg/apache/hc/core5/http/Header;)V

    :cond_0
    return-void
.end method

.method public static canResponseHaveBody(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpResponse;)Z
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result p0

    const/16 v0, 0xc8

    if-eqz p0, :cond_1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    if-lt p1, v0, :cond_2

    const/16 p0, 0xcc

    if-eq p1, p0, :cond_2

    const/16 p0, 0x130

    if-eq p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static format(Ljava/lang/String;Ljava/util/Set;)Lorg/apache/hc/core5/http/Header;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/hc/core5/http/Header;"
        }
    .end annotation

    const-string v0, "Header name"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string p0, ": "

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http/message/MessageSupport;->formatTokens(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/util/Set;)V

    invoke-static {v0}, Lorg/apache/hc/core5/http/message/BufferedHeader;->create(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/message/BufferedHeader;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;
    .locals 2

    const-string v0, "Header name"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string p0, ": "

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http/message/MessageSupport;->formatTokens(Lorg/apache/hc/core5/util/CharArrayBuffer;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/hc/core5/http/message/BufferedHeader;->create(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/message/BufferedHeader;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static formatTokens(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/util/CharArrayBuffer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Destination"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/message/MessageSupport;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/message/MessageSupport;->formatTokens(Lorg/apache/hc/core5/util/CharArrayBuffer;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs formatTokens(Lorg/apache/hc/core5/util/CharArrayBuffer;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "Destination"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-lez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {p0, v2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static iterate(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/MessageHeaders;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/hc/core5/http/HeaderElement;",
            ">;"
        }
    .end annotation

    const-string v0, "Message headers"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeaderElementIterator;

    invoke-interface {p0, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/http/message/BasicHeaderElementIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static parse(Lorg/apache/hc/core5/http/Header;)[Lorg/apache/hc/core5/http/HeaderElement;
    .locals 3

    const-string v0, "Headers"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lorg/apache/hc/core5/http/HeaderElement;

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    sget-object v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;

    invoke-virtual {v0, p0, v1}, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->parseElements(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)[Lorg/apache/hc/core5/http/HeaderElement;

    move-result-object p0

    return-object p0
.end method

.method public static parseTokens(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/hc/core5/http/message/ParserCursor;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Source"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cursor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    :cond_1
    sget-object v1, Lorg/apache/hc/core5/util/Tokenizer;->INSTANCE:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v2, Lorg/apache/hc/core5/http/message/MessageSupport;->COMMA:Ljava/util/BitSet;

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static parseTokens(Lorg/apache/hc/core5/http/Header;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/Header;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Header"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/apache/hc/core5/http/FormattedHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/hc/core5/http/FormattedHeader;

    invoke-interface {p0}, Lorg/apache/hc/core5/http/FormattedHeader;->getBuffer()Lorg/apache/hc/core5/util/CharArrayBuffer;

    move-result-object v0

    new-instance v2, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    invoke-interface {p0}, Lorg/apache/hc/core5/http/FormattedHeader;->getValuePos()I

    move-result p0

    invoke-virtual {v2, p0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    invoke-static {v0, v2}, Lorg/apache/hc/core5/http/message/MessageSupport;->parseTokens(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    invoke-static {p0, v0}, Lorg/apache/hc/core5/http/message/MessageSupport;->parseTokens(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
