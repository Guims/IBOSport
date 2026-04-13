.class public Lorg/apache/hc/core5/http/message/BasicLineParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/message/LineParser;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final BLANKS:Ljava/util/BitSet;

.field private static final COLON:Ljava/util/BitSet;

.field private static final FULL_STOP:Ljava/util/BitSet;

.field public static final INSTANCE:Lorg/apache/hc/core5/http/message/BasicLineParser;


# instance fields
.field private final protocol:Lorg/apache/hc/core5/http/ProtocolVersion;

.field private final tokenizer:Lorg/apache/hc/core5/util/Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/message/BasicLineParser;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicLineParser;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicLineParser;

    const/16 v0, 0x2e

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicLineParser;->FULL_STOP:Ljava/util/BitSet;

    const/16 v0, 0x20

    const/16 v1, 0x9

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicLineParser;->BLANKS:Ljava/util/BitSet;

    const/16 v0, 0x3a

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicLineParser;->COLON:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/message/BasicLineParser;-><init>(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/ProtocolVersion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->protocol:Lorg/apache/hc/core5/http/ProtocolVersion;

    sget-object p1, Lorg/apache/hc/core5/util/Tokenizer;->INSTANCE:Lorg/apache/hc/core5/util/Tokenizer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    return-void
.end method


# virtual methods
.method public parseHeader(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/Header;
    .locals 8

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/message/ParserCursor;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v1, p1, v0}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v2, Lorg/apache/hc/core5/http/message/BasicLineParser;->COLON:Ljava/util/BitSet;

    invoke-virtual {v1, p1, v0, v2}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lorg/apache/hc/core5/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/hc/core5/util/Tokenizer;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v2, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v7

    const-string v3, "Invalid header"

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v2
.end method

.method public parseProtocolVersion(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 9

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->protocol:Lorg/apache/hc/core5/http/ProtocolVersion;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v2, p1, p2}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    add-int v3, v2, v1

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v5

    if-gt v4, v5, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v7, v4

    move v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ge v7, v1, :cond_1

    add-int v6, v2, v7

    invoke-virtual {p1, v6}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v6, v8, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_3

    invoke-virtual {p1, v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    move v4, v5

    :cond_2
    move v6, v4

    :cond_3
    if-eqz v6, :cond_5

    add-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v1, Lorg/apache/hc/core5/http/message/BasicLineParser;->FULL_STOP:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p2, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v2, Lorg/apache/hc/core5/http/message/BasicLineParser;->BLANKS:Ljava/util/BitSet;

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http/HttpVersion;->get(II)Lorg/apache/hc/core5/http/HttpVersion;

    move-result-object p1

    return-object p1

    :catch_0
    new-instance v0, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v5

    const-string v1, "Invalid protocol minor version number"

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v0

    :cond_4
    move-object v3, p1

    new-instance v1, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v6

    const-string v2, "Invalid protocol version"

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v1

    :catch_1
    move-object v3, p1

    new-instance v1, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v6

    const-string v2, "Invalid protocol major version number"

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v1

    :cond_5
    move-object v3, p1

    new-instance v1, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v6

    const-string v2, "Invalid protocol version"

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v1

    :cond_6
    move-object v3, p1

    new-instance v1, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v6

    const-string v2, "Invalid protocol version"

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v1
.end method

.method public parseRequestLine(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/message/RequestLine;
    .locals 11

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/message/ParserCursor;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v1, p1, v0}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v2, Lorg/apache/hc/core5/http/message/BasicLineParser;->BLANKS:Ljava/util/BitSet;

    invoke-virtual {v1, p1, v0, v2}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v3, p1, v0}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    iget-object v3, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v3, p1, v0, v2}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/hc/core5/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v4, p1, v0}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p1, Lorg/apache/hc/core5/http/message/RequestLine;

    invoke-direct {p1, v1, v2, v3}, Lorg/apache/hc/core5/http/message/RequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/ProtocolVersion;)V

    return-object p1

    :cond_0
    new-instance v4, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v7

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v8

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v9

    const-string v5, "Invalid request line"

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v4

    :cond_1
    move-object v7, p1

    new-instance v5, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v8

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v9

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v10

    const-string v6, "Invalid request line"

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v5

    :cond_2
    move-object v7, p1

    new-instance v5, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v8

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v9

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v10

    const-string v6, "Invalid request line"

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v5
.end method

.method public parseStatusLine(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/message/StatusLine;
    .locals 11

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v1, p1, v0}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v3, p1, v0}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    iget-object v3, p0, Lorg/apache/hc/core5/http/message/BasicLineParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v4, Lorg/apache/hc/core5/http/message/BasicLineParser;->BLANKS:Ljava/util/BitSet;

    invoke-virtual {v3, p1, v0, v4}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v7

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v8

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v9

    const-string v5, "Status line contains invalid status code"

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v4

    :cond_1
    move-object v6, p1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v0

    invoke-virtual {v6, v2, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {v2, v1, p1, v0}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/ProtocolVersion;ILjava/lang/String;)V

    return-object v2

    :catch_0
    new-instance v5, Lorg/apache/hc/core5/http/ParseException;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v8

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v9

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v10

    move-object v7, v6

    const-string v6, "Status line contains invalid status code"

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    throw v5
.end method
