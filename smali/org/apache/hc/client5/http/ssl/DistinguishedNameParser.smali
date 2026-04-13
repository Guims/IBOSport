.class final Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser$InternalTokenParser;
    }
.end annotation


# static fields
.field private static final COMMA_OR_PLUS:Ljava/util/BitSet;

.field private static final EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

.field public static final INSTANCE:Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;


# instance fields
.field private final tokenParser:Lorg/apache/hc/core5/util/Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->INSTANCE:Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;

    const/16 v0, 0x3d

    const/16 v1, 0x2c

    const/16 v2, 0x2b

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->COMMA_OR_PLUS:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser$InternalTokenParser;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser$InternalTokenParser;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    return-void
.end method

.method private parseParameter(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Lorg/apache/hc/core5/http/NameValuePair;
    .locals 4

    sget-object v0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->parseToken(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p1, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1

    new-instance p1, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    sget-object v1, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->COMMA_OR_PLUS:Ljava/util/BitSet;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->parseValue(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    :cond_2
    new-instance p2, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {p2, v0, p1}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private parseToken(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseValue(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/hc/core5/util/Tokenizer;->parseValue(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/util/Tokenizer$Cursor;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->parse(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/util/CharArrayBuffer;",
            "Lorg/apache/hc/core5/util/Tokenizer$Cursor;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v1, p1, p2}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    :goto_0
    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->parseParameter(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)Lorg/apache/hc/core5/http/NameValuePair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
