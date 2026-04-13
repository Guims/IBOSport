.class public Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/message/HeaderValueParser;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final ELEM_DELIMITER:C = ','

.field private static final EMPTY_HEADER_ELEMENT_ARRAY:[Lorg/apache/hc/core5/http/HeaderElement;

.field private static final EMPTY_NAME_VALUE_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

.field public static final INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;

.field private static final PARAM_DELIMITER:C = ';'

.field private static final TOKEN_DELIMITER:Ljava/util/BitSet;

.field private static final VALUE_DELIMITER:Ljava/util/BitSet;


# instance fields
.field private final tokenizer:Lorg/apache/hc/core5/util/Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;

    const/16 v0, 0x3d

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->TOKEN_DELIMITER:Ljava/util/BitSet;

    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->VALUE_DELIMITER:Ljava/util/BitSet;

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/hc/core5/http/HeaderElement;

    sput-object v1, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->EMPTY_HEADER_ELEMENT_ARRAY:[Lorg/apache/hc/core5/http/HeaderElement;

    new-array v0, v0, [Lorg/apache/hc/core5/http/NameValuePair;

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->EMPTY_NAME_VALUE_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/hc/core5/util/Tokenizer;->INSTANCE:Lorg/apache/hc/core5/util/Tokenizer;

    iput-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    return-void
.end method


# virtual methods
.method public parseElements(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)[Lorg/apache/hc/core5/http/HeaderElement;
    .locals 3

    const-string v0, "Char sequence"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/HeaderElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->EMPTY_HEADER_ELEMENT_ARRAY:[Lorg/apache/hc/core5/http/HeaderElement;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/hc/core5/http/HeaderElement;

    return-object p1
.end method

.method public parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/HeaderElement;
    .locals 3

    const-string v0, "Char sequence"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->parseNameValuePair(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/NameValuePair;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->parseParameters(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)[Lorg/apache/hc/core5/http/NameValuePair;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lorg/apache/hc/core5/http/message/BasicHeaderElement;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0, p1}, Lorg/apache/hc/core5/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;)V

    return-object p2
.end method

.method public parseNameValuePair(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/NameValuePair;
    .locals 4

    const-string v0, "Char sequence"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v1, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->TOKEN_DELIMITER:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

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

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_1

    new-instance p1, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v2, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->VALUE_DELIMITER:Ljava/util/BitSet;

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/hc/core5/util/Tokenizer;->parseValue(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

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

.method public parseParameters(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)[Lorg/apache/hc/core5/http/NameValuePair;
    .locals 3

    const-string v0, "Char sequence"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->parseNameValuePair(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/NameValuePair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    :cond_1
    sget-object p1, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->EMPTY_NAME_VALUE_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/hc/core5/http/NameValuePair;

    return-object p1
.end method
