.class public final Lw5/r;
.super Ljava/lang/Object;


# static fields
.field public static final k:[C


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/List;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lw5/r;->k:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "scheme"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p4, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/r;->b:Ljava/lang/String;

    iput-object p2, p0, Lw5/r;->c:Ljava/lang/String;

    iput-object p3, p0, Lw5/r;->d:Ljava/lang/String;

    iput-object p4, p0, Lw5/r;->e:Ljava/lang/String;

    iput p5, p0, Lw5/r;->f:I

    iput-object p6, p0, Lw5/r;->g:Ljava/util/ArrayList;

    iput-object p7, p0, Lw5/r;->h:Ljava/util/List;

    iput-object p8, p0, Lw5/r;->i:Ljava/lang/String;

    iput-object p9, p0, Lw5/r;->j:Ljava/lang/String;

    const-string p2, "https"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lw5/r;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lw5/r;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lw5/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    iget-object v2, p0, Lw5/r;->j:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-static {v2, v3, v0, v1}, Lk5/f;->M(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x6

    const/16 v4, 0x40

    invoke-static {v2, v4, v1, v3}, Lk5/f;->M(Ljava/lang/CharSequence;CII)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lw5/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    iget-object v2, p0, Lw5/r;->j:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-static {v2, v3, v0, v1}, Lk5/f;->M(Ljava/lang/CharSequence;CII)I

    move-result v0

    const-string v1, "?#"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3, v2, v1}, Lx5/b;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 7

    iget-object v0, p0, Lw5/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    iget-object v2, p0, Lw5/r;->j:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-static {v2, v3, v0, v1}, Lk5/f;->M(Ljava/lang/CharSequence;CII)I

    move-result v0

    const-string v1, "?#"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v4, v2, v1}, Lx5/b;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3, v0, v1}, Lx5/b;->f(Ljava/lang/String;CII)I

    move-result v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v6}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v5

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lw5/r;->h:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    iget-object v2, p0, Lw5/r;->j:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-static {v2, v3, v0, v1}, Lk5/f;->M(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v1, v0, v3}, Lx5/b;->f(Ljava/lang/String;CII)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lw5/r;->c:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lw5/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const-string v1, ":@"

    iget-object v2, p0, Lw5/r;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3, v2, v1}, Lx5/b;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lw5/r;

    if-eqz v0, :cond_0

    check-cast p1, Lw5/r;

    iget-object p1, p1, Lw5/r;->j:Ljava/lang/String;

    iget-object v0, p0, Lw5/r;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Ljava/lang/String;)Lw5/q;
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lw5/q;

    invoke-direct {v0}, Lw5/q;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/q;->c(Lw5/r;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()Ljava/lang/String;
    .locals 8

    const-string v0, "/..."

    invoke-virtual {p0, v0}, Lw5/r;->f(Ljava/lang/String;)Lw5/q;

    move-result-object v0

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/16 v3, 0xfb

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, ""

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static/range {v1 .. v6}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lw5/q;->b:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v4, 0xfb

    const/4 v3, 0x0

    const-string v5, ""

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static/range {v2 .. v7}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lw5/q;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lw5/q;->a()Lw5/r;

    move-result-object v0

    iget-object v0, v0, Lw5/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/net/URI;
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Lw5/q;

    invoke-direct {v0}, Lw5/q;-><init>()V

    iget-object v2, v1, Lw5/r;->b:Ljava/lang/String;

    iput-object v2, v0, Lw5/q;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lw5/r;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lw5/q;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lw5/r;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lw5/q;->c:Ljava/lang/String;

    iget-object v3, v1, Lw5/r;->e:Ljava/lang/String;

    iput-object v3, v0, Lw5/q;->d:Ljava/lang/String;

    invoke-static {v2}, Lw5/b;->c(Ljava/lang/String;)I

    move-result v2

    iget v3, v1, Lw5/r;->f:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iput v3, v0, Lw5/q;->e:I

    iget-object v2, v0, Lw5/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Lw5/r;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lw5/r;->d()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    if-eqz v7, :cond_1

    const/4 v9, 0x1

    const/16 v6, 0xd3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v8, " \"\'<>#"

    invoke-static/range {v4 .. v9}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lw5/b;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    iput-object v4, v0, Lw5/q;->g:Ljava/util/ArrayList;

    iget-object v4, v1, Lw5/r;->i:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    const/16 v4, 0x23

    const/4 v6, 0x6

    iget-object v7, v1, Lw5/r;->j:Ljava/lang/String;

    invoke-static {v7, v4, v5, v6}, Lk5/f;->M(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v4, v6}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iput-object v4, v0, Lw5/q;->h:Ljava/lang/String;

    iget-object v4, v0, Lw5/q;->d:Ljava/lang/String;

    const-string v6, "replaceAll(...)"

    const-string v7, ""

    const-string v8, "compile(...)"

    if-eqz v4, :cond_3

    const-string v9, "[\"<>^`{|}]"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-static {v9, v8}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    iput-object v4, v0, Lw5/q;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v9, v5

    :goto_4
    if-ge v9, v4, :cond_4

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v13, 0xe3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v15, "[]"

    invoke-static/range {v11 .. v16}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lw5/q;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_5
    if-ge v5, v4, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_5

    const/4 v15, 0x1

    const/16 v12, 0xc3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v14, "\\^`{|}"

    invoke-static/range {v10 .. v15}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_5
    move-object v9, v3

    :goto_6
    invoke-interface {v2, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    iget-object v12, v0, Lw5/q;->h:Ljava/lang/String;

    if-eqz v12, :cond_7

    const/4 v14, 0x0

    const/16 v11, 0xa3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v13, " \"#<>\\^`{|}"

    invoke-static/range {v9 .. v14}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :cond_7
    iput-object v3, v0, Lw5/q;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lw5/q;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, v8}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "try {\n        val stripp\u2026e) // Unexpected!\n      }"

    invoke-static {v0, v2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catch_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lw5/r;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw5/r;->j:Ljava/lang/String;

    return-object v0
.end method
