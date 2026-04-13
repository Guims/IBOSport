.class public final LK5/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final q:Ljava/lang/String;


# instance fields
.field public final b:LK5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "separator"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LK5/x;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LK5/j;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/x;->b:LK5/j;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, LL5/c;->a(LK5/x;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x5c

    iget-object v4, p0, LK5/x;->b:LK5/j;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, LK5/j;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v4, v1}, LK5/j;->g(I)B

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {v4}, LK5/j;->b()I

    move-result v2

    move v5, v1

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {v4, v1}, LK5/j;->g(I)B

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_2

    invoke-virtual {v4, v1}, LK5/j;->g(I)B

    move-result v6

    if-ne v6, v3, :cond_3

    :cond_2
    invoke-virtual {v4, v5, v1}, LK5/j;->l(II)LK5/j;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, LK5/j;->b()I

    move-result v1

    if-ge v5, v1, :cond_5

    invoke-virtual {v4}, LK5/j;->b()I

    move-result v1

    invoke-virtual {v4, v5, v1}, LK5/j;->l(II)LK5/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    sget-object v0, LL5/c;->a:LK5/j;

    iget-object v1, p0, LK5/x;->b:LK5/j;

    invoke-static {v1, v0}, LK5/j;->i(LK5/j;LK5/j;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LL5/c;->b:LK5/j;

    invoke-static {v1, v0}, LK5/j;->i(LK5/j;LK5/j;)I

    move-result v0

    :goto_0
    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v3}, LK5/j;->m(LK5/j;III)LK5/j;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LK5/x;->f()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, LK5/j;->b()I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-object v1, LK5/j;->s:LK5/j;

    :cond_2
    :goto_1
    invoke-virtual {v1}, LK5/j;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()LK5/x;
    .locals 10

    sget-object v0, LL5/c;->d:LK5/j;

    iget-object v1, p0, LK5/x;->b:LK5/j;

    invoke-static {v1, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, LL5/c;->a:LK5/j;

    invoke-static {v1, v2}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, LL5/c;->b:LK5/j;

    invoke-static {v1, v3}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, LL5/c;->e:LK5/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "suffix"

    invoke-static {v4, v5}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, LK5/j;->b()I

    move-result v5

    iget-object v6, v4, LK5/j;->b:[B

    array-length v7, v6

    sub-int/2addr v5, v7

    array-length v6, v6

    invoke-virtual {v1, v5, v4, v6}, LK5/j;->k(ILK5/j;I)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v1}, LK5/j;->b()I

    move-result v4

    if-ne v4, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, LK5/j;->b()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v2, v7}, LK5/j;->k(ILK5/j;I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1}, LK5/j;->b()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v3, v7}, LK5/j;->k(ILK5/j;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {v1, v2}, LK5/j;->i(LK5/j;LK5/j;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v1, v3}, LK5/j;->i(LK5/j;LK5/j;)I

    move-result v2

    :goto_0
    const/4 v8, 0x0

    if-ne v2, v6, :cond_5

    invoke-virtual {p0}, LK5/x;->f()Ljava/lang/Character;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v1}, LK5/j;->b()I

    move-result v0

    if-ne v0, v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, LK5/x;

    invoke-static {v1, v8, v5, v7}, LK5/j;->m(LK5/j;III)LK5/j;

    move-result-object v1

    invoke-direct {v0, v1}, LK5/x;-><init>(LK5/j;)V

    return-object v0

    :cond_5
    if-ne v2, v7, :cond_6

    const-string v5, "prefix"

    invoke-static {v3, v5}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, LK5/j;->b()I

    move-result v5

    invoke-virtual {v1, v8, v3, v5}, LK5/j;->k(ILK5/j;I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    if-ne v2, v4, :cond_8

    invoke-virtual {p0}, LK5/x;->f()Ljava/lang/Character;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, LK5/j;->b()I

    move-result v0

    if-ne v0, v6, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, LK5/x;

    invoke-static {v1, v8, v6, v7}, LK5/j;->m(LK5/j;III)LK5/j;

    move-result-object v1

    invoke-direct {v0, v1}, LK5/x;-><init>(LK5/j;)V

    return-object v0

    :cond_8
    if-ne v2, v4, :cond_9

    new-instance v1, LK5/x;

    invoke-direct {v1, v0}, LK5/x;-><init>(LK5/j;)V

    return-object v1

    :cond_9
    if-nez v2, :cond_a

    new-instance v0, LK5/x;

    invoke-static {v1, v8, v7, v7}, LK5/j;->m(LK5/j;III)LK5/j;

    move-result-object v1

    invoke-direct {v0, v1}, LK5/x;-><init>(LK5/j;)V

    return-object v0

    :cond_a
    new-instance v0, LK5/x;

    invoke-static {v1, v8, v2, v7}, LK5/j;->m(LK5/j;III)LK5/j;

    move-result-object v1

    invoke-direct {v0, v1}, LK5/x;-><init>(LK5/j;)V

    return-object v0

    :cond_b
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LK5/x;

    const-string v0, "other"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK5/x;->b:LK5/j;

    iget-object p1, p1, LK5/x;->b:LK5/j;

    invoke-virtual {v0, p1}, LK5/j;->a(LK5/j;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;)LK5/x;
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK5/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, LK5/g;->L(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, LL5/c;->d(LK5/g;Z)LK5/x;

    move-result-object v0

    invoke-static {p0, v0, p1}, LL5/c;->b(LK5/x;LK5/x;Z)LK5/x;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, LK5/x;->b:LK5/j;

    invoke-virtual {v0}, LK5/j;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, LC2/a;->l(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "get(toString())"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LK5/x;

    if-eqz v0, :cond_0

    check-cast p1, LK5/x;

    iget-object p1, p1, LK5/x;->b:LK5/j;

    iget-object v0, p0, LK5/x;->b:LK5/j;

    invoke-static {p1, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/Character;
    .locals 3

    sget-object v0, LL5/c;->a:LK5/j;

    iget-object v1, p0, LK5/x;->b:LK5/j;

    invoke-static {v1, v0}, LK5/j;->e(LK5/j;LK5/j;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, LK5/j;->b()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LK5/j;->g(I)B

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, LK5/j;->g(I)B

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_3

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x41

    if-gt v1, v0, :cond_4

    const/16 v1, 0x5b

    if-ge v0, v1, :cond_4

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LK5/x;->b:LK5/j;

    invoke-virtual {v0}, LK5/j;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LK5/x;->b:LK5/j;

    invoke-virtual {v1}, LK5/j;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LK5/x;->b:LK5/j;

    invoke-virtual {v0}, LK5/j;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
