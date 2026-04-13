.class public final LL5/e;
.super LK5/n;


# static fields
.field public static final c:LK5/x;


# instance fields
.field public final b:LS4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LK5/x;->q:Ljava/lang/String;

    const-string v0, "/"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh3/e;->t(Ljava/lang/String;Z)LK5/x;

    move-result-object v0

    sput-object v0, LL5/e;->c:LK5/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LA5/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, LA5/m;-><init>(ILjava/lang/Object;)V

    new-instance p1, LS4/g;

    invoke-direct {p1, v0}, LS4/g;-><init>(Ld5/a;)V

    iput-object p1, p0, LL5/e;->b:LS4/g;

    return-void
.end method

.method public static j(LK5/x;)Ljava/lang/String;
    .locals 12

    sget-object v0, LL5/e;->c:LK5/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LK5/x;->b:LK5/j;

    const-string v2, "child"

    invoke-static {p0, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, LL5/c;->b(LK5/x;LK5/x;Z)LK5/x;

    move-result-object p0

    iget-object v2, p0, LK5/x;->b:LK5/j;

    invoke-static {p0}, LL5/c;->a(LK5/x;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-object v7, v4

    goto :goto_0

    :cond_0
    new-instance v7, LK5/x;

    invoke-virtual {v2, v5, v3}, LK5/j;->l(II)LK5/j;

    move-result-object v3

    invoke-direct {v7, v3}, LK5/x;-><init>(LK5/j;)V

    :goto_0
    invoke-static {v0}, LL5/c;->a(LK5/x;)I

    move-result v3

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, LK5/x;

    invoke-virtual {v1, v5, v3}, LK5/j;->l(II)LK5/j;

    move-result-object v3

    invoke-direct {v4, v3}, LK5/x;-><init>(LK5/j;)V

    :goto_1
    invoke-static {v7, v4}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " and "

    if-eqz v3, :cond_8

    invoke-virtual {p0}, LK5/x;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, LK5/x;->a()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_2

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    if-ne v9, v8, :cond_3

    invoke-virtual {v2}, LK5/j;->b()I

    move-result v2

    invoke-virtual {v1}, LK5/j;->b()I

    move-result v1

    if-ne v2, v1, :cond_3

    sget-object p0, LK5/x;->q:Ljava/lang/String;

    const-string p0, "."

    invoke-static {p0, v5}, Lh3/e;->t(Ljava/lang/String;Z)LK5/x;

    move-result-object p0

    goto :goto_5

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v7, v9, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    sget-object v2, LL5/c;->e:LK5/j;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v6, :cond_7

    new-instance v1, LK5/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, LL5/c;->c(LK5/x;)LK5/j;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {p0}, LL5/c;->c(LK5/x;)LK5/j;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object p0, LK5/x;->q:Ljava/lang/String;

    invoke-static {p0}, LL5/c;->f(Ljava/lang/String;)LK5/j;

    move-result-object v0

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v2, v9

    :goto_3
    if-ge v2, p0, :cond_5

    sget-object v4, LL5/c;->e:LK5/j;

    invoke-virtual {v1, v4}, LK5/g;->F(LK5/j;)V

    invoke-virtual {v1, v0}, LK5/g;->F(LK5/j;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_4
    if-ge v9, p0, :cond_6

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK5/j;

    invoke-virtual {v1, v2}, LK5/g;->F(LK5/j;)V

    invoke-virtual {v1, v0}, LK5/g;->F(LK5/j;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v1, v5}, LL5/c;->d(LK5/g;Z)LK5/x;

    move-result-object p0

    :goto_5
    iget-object p0, p0, LK5/x;->b:LK5/j;

    invoke-virtual {p0}, LK5/j;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impossible relative path to resolve: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Paths of different roots cannot be relative to each other: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(LK5/x;LK5/x;)V
    .locals 1

    const-string p1, "target"

    invoke-static {p2, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(LK5/x;)V
    .locals 2

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is read-only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(LK5/x;)V
    .locals 2

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is read-only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(LK5/x;)LK5/m;
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LW3/e;->o(LK5/x;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, LL5/e;->j(LK5/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, LL5/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS4/d;

    iget-object v2, v1, LS4/d;->b:Ljava/lang/Object;

    check-cast v2, LK5/n;

    iget-object v1, v1, LS4/d;->q:Ljava/lang/Object;

    check-cast v1, LK5/x;

    invoke-virtual {v1, p1}, LK5/x;->d(Ljava/lang/String;)LK5/x;

    move-result-object v1

    invoke-virtual {v2, v1}, LK5/n;->e(LK5/x;)LK5/m;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(LK5/x;)LK5/s;
    .locals 5

    invoke-static {p1}, LW3/e;->o(LK5/x;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_1

    invoke-static {p1}, LL5/e;->j(LK5/x;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LL5/e;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LS4/d;

    iget-object v4, v3, LS4/d;->b:Ljava/lang/Object;

    check-cast v4, LK5/n;

    iget-object v3, v3, LS4/d;->q:Ljava/lang/Object;

    check-cast v3, LK5/x;

    :try_start_0
    invoke-virtual {v3, v0}, LK5/x;->d(Ljava/lang/String;)LK5/x;

    move-result-object v3

    invoke-virtual {v4, v3}, LK5/n;->f(LK5/x;)LK5/s;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(LK5/x;)LK5/s;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "resources are not writable"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(LK5/x;)LK5/F;
    .locals 5

    const-string v0, "file"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LW3/e;->o(LK5/x;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_1

    invoke-static {p1}, LL5/e;->j(LK5/x;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LL5/e;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LS4/d;

    iget-object v4, v3, LS4/d;->b:Ljava/lang/Object;

    check-cast v4, LK5/n;

    iget-object v3, v3, LS4/d;->q:Ljava/lang/Object;

    check-cast v3, LK5/x;

    :try_start_0
    invoke-virtual {v3, v0}, LK5/x;->d(Ljava/lang/String;)LK5/x;

    move-result-object v3

    invoke-virtual {v4, v3}, LK5/n;->h(LK5/x;)LK5/F;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LL5/e;->b:LS4/g;

    invoke-virtual {v0}, LS4/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
