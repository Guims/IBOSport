.class final Lorg/apache/hc/core5/http/ssl/TlsVersionParser;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/ssl/TlsVersionParser;


# instance fields
.field private final tokenizer:Lorg/apache/hc/core5/util/Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/ssl/TlsVersionParser;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/ssl/TlsVersionParser;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/ssl/TlsVersionParser;->INSTANCE:Lorg/apache/hc/core5/http/ssl/TlsVersionParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/hc/core5/util/Tokenizer;->INSTANCE:Lorg/apache/hc/core5/util/Tokenizer;

    iput-object v0, p0, Lorg/apache/hc/core5/http/ssl/TlsVersionParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 7

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v5

    move v0, v5

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v1

    if-gt v5, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_2

    invoke-virtual {p2, v5}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/ssl/TlsVersionParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "TLS"

    if-ne p3, v0, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lorg/apache/hc/core5/http/ProtocolVersion;

    invoke-direct {p2, v2, p1, v1}, Lorg/apache/hc/core5/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object p2

    :catch_0
    new-instance v0, Lorg/apache/hc/core5/http/ParseException;

    const-string v1, "Invalid TLS major version"

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v0

    :cond_0
    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    new-instance p3, Lorg/apache/hc/core5/http/ProtocolVersion;

    invoke-direct {p3, p1, v0, p2}, Lorg/apache/hc/core5/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object p3

    :catch_1
    new-instance v0, Lorg/apache/hc/core5/http/ParseException;

    const-string v1, "Invalid TLS minor version"

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v0

    :catch_2
    new-instance v0, Lorg/apache/hc/core5/http/ParseException;

    const-string v1, "Invalid TLS major version"

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v0

    :cond_1
    move-object v2, p1

    new-instance v0, Lorg/apache/hc/core5/http/ParseException;

    const-string v1, "Invalid TLS version"

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v0

    :cond_2
    move-object v2, p1

    move v5, v0

    new-instance v0, Lorg/apache/hc/core5/http/ParseException;

    const-string v1, "Invalid TLS protocol version"

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v0

    :cond_3
    move-object v2, p1

    move v5, v0

    new-instance v0, Lorg/apache/hc/core5/http/ParseException;

    const-string v1, "Invalid TLS protocol version"

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/util/Tokenizer$Cursor;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;-><init>(II)V

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/hc/core5/http/ssl/TlsVersionParser;->parse(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object p1

    return-object p1
.end method
