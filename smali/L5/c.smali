.class public abstract LL5/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:LK5/j;

.field public static final b:LK5/j;

.field public static final c:LK5/j;

.field public static final d:LK5/j;

.field public static final e:LK5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LK5/j;->s:LK5/j;

    const-string v0, "/"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LL5/c;->a:LK5/j;

    const-string v0, "\\"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LL5/c;->b:LK5/j;

    const-string v0, "/\\"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LL5/c;->c:LK5/j;

    const-string v0, "."

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LL5/c;->d:LK5/j;

    const-string v0, ".."

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LL5/c;->e:LK5/j;

    return-void
.end method

.method public static final a(LK5/x;)I
    .locals 6

    iget-object p0, p0, LK5/x;->b:LK5/j;

    invoke-virtual {p0}, LK5/j;->b()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK5/j;->g(I)B

    move-result v2

    const/16 v3, 0x2f

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, LK5/j;->g(I)B

    move-result v2

    const/16 v3, 0x5c

    const/4 v5, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, LK5/j;->b()I

    move-result v0

    if-le v0, v5, :cond_3

    invoke-virtual {p0, v4}, LK5/j;->g(I)B

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "other"

    sget-object v2, LL5/c;->b:LK5/j;

    invoke-static {v2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, LK5/j;->f()[B

    move-result-object v0

    invoke-virtual {p0, v0, v5}, LK5/j;->d([BI)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, LK5/j;->b()I

    move-result p0

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v4

    :cond_4
    invoke-virtual {p0}, LK5/j;->b()I

    move-result v2

    if-le v2, v5, :cond_6

    invoke-virtual {p0, v4}, LK5/j;->g(I)B

    move-result v2

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_6

    invoke-virtual {p0, v5}, LK5/j;->g(I)B

    move-result v2

    if-ne v2, v3, :cond_6

    invoke-virtual {p0, v0}, LK5/j;->g(I)B

    move-result p0

    int-to-char p0, p0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_5

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x41

    if-gt v0, p0, :cond_6

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_6

    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method public static final b(LK5/x;LK5/x;Z)LK5/x;
    .locals 6

    const-string v0, "child"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LL5/c;->a(LK5/x;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, LK5/x;->f()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0}, LL5/c;->c(LK5/x;)LK5/j;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, LL5/c;->c(LK5/x;)LK5/j;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, LK5/x;->q:Ljava/lang/String;

    invoke-static {v0}, LL5/c;->f(Ljava/lang/String;)LK5/j;

    move-result-object v0

    :cond_2
    new-instance v1, LK5/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, LK5/x;->b:LK5/j;

    invoke-virtual {v1, p0}, LK5/g;->F(LK5/j;)V

    iget-wide v2, v1, LK5/g;->q:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_3

    invoke-virtual {v1, v0}, LK5/g;->F(LK5/j;)V

    :cond_3
    iget-object p0, p1, LK5/x;->b:LK5/j;

    invoke-virtual {v1, p0}, LK5/g;->F(LK5/j;)V

    invoke-static {v1, p2}, LL5/c;->d(LK5/g;Z)LK5/x;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LK5/x;)LK5/j;
    .locals 3

    iget-object v0, p0, LK5/x;->b:LK5/j;

    sget-object v1, LL5/c;->a:LK5/j;

    invoke-static {v0, v1}, LK5/j;->e(LK5/j;LK5/j;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, LK5/x;->b:LK5/j;

    sget-object v0, LL5/c;->b:LK5/j;

    invoke-static {p0, v0}, LK5/j;->e(LK5/j;LK5/j;)I

    move-result p0

    if-eq p0, v2, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final d(LK5/g;Z)LK5/x;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, LK5/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    sget-object v5, LL5/c;->a:LK5/j;

    invoke-virtual {v0, v5}, LK5/g;->y(LK5/j;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-object v5, LL5/c;->b:LK5/j;

    invoke-virtual {v0, v5}, LK5/g;->y(LK5/j;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v4, v6, :cond_1

    invoke-static {v2, v5}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v8, -0x1

    sget-object v10, LL5/c;->c:LK5/j;

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_2

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, LK5/g;->F(LK5/j;)V

    invoke-virtual {v1, v2}, LK5/g;->F(LK5/j;)V

    goto :goto_2

    :cond_2
    if-lez v4, :cond_3

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, LK5/g;->F(LK5/j;)V

    :goto_2
    move-wide v15, v8

    goto :goto_5

    :cond_3
    invoke-virtual {v0, v10}, LK5/g;->x(LK5/j;)J

    move-result-wide v13

    if-nez v2, :cond_5

    cmp-long v2, v13, v8

    if-nez v2, :cond_4

    sget-object v2, LK5/x;->q:Ljava/lang/String;

    invoke-static {v2}, LL5/c;->f(Ljava/lang/String;)LK5/j;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v13, v14}, LK5/g;->r(J)B

    move-result v2

    invoke-static {v2}, LL5/c;->e(B)LK5/j;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-static {v2, v5}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    iget-wide v4, v0, LK5/g;->q:J

    move-wide v15, v4

    const-wide/16 v3, 0x2

    cmp-long v5, v15, v3

    if-gez v5, :cond_7

    goto :goto_2

    :cond_7
    move-wide v15, v8

    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, LK5/g;->r(J)B

    move-result v5

    const/16 v8, 0x3a

    if-eq v5, v8, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v11, v12}, LK5/g;->r(J)B

    move-result v5

    int-to-char v5, v5

    const/16 v8, 0x61

    if-gt v8, v5, :cond_9

    const/16 v8, 0x7b

    if-ge v5, v8, :cond_9

    goto :goto_4

    :cond_9
    const/16 v8, 0x41

    if-gt v8, v5, :cond_b

    const/16 v8, 0x5b

    if-ge v5, v8, :cond_b

    :goto_4
    cmp-long v5, v13, v3

    if-nez v5, :cond_a

    const-wide/16 v3, 0x3

    invoke-virtual {v1, v0, v3, v4}, LK5/g;->q(LK5/g;J)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v0, v3, v4}, LK5/g;->q(LK5/g;J)V

    :cond_b
    :goto_5
    iget-wide v3, v1, LK5/g;->q:J

    cmp-long v3, v3, v11

    if-lez v3, :cond_c

    move v3, v7

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    :goto_7
    invoke-virtual {v0}, LK5/g;->h()Z

    move-result v5

    sget-object v8, LL5/c;->d:LK5/j;

    if-nez v5, :cond_15

    invoke-virtual {v0, v10}, LK5/g;->x(LK5/j;)J

    move-result-wide v13

    cmp-long v5, v13, v15

    if-nez v5, :cond_e

    iget-wide v13, v0, LK5/g;->q:J

    invoke-virtual {v0, v13, v14}, LK5/g;->c(J)LK5/j;

    move-result-object v5

    goto :goto_8

    :cond_e
    invoke-virtual {v0, v13, v14}, LK5/g;->c(J)LK5/j;

    move-result-object v5

    invoke-virtual {v0}, LK5/g;->readByte()B

    :goto_8
    sget-object v9, LL5/c;->e:LK5/j;

    invoke-static {v5, v9}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    if-eqz v3, :cond_f

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    :cond_f
    if-eqz p1, :cond_13

    if-nez v3, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {v4}, LT4/g;->A(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v9}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_9

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v7, :cond_d

    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {v4}, LT4/h;->s(Ljava/util/List;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_13
    :goto_9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    invoke-static {v5, v8}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    sget-object v8, LK5/j;->s:LK5/j;

    invoke-static {v5, v8}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_17

    if-lez v3, :cond_16

    invoke-virtual {v1, v2}, LK5/g;->F(LK5/j;)V

    :cond_16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK5/j;

    invoke-virtual {v1, v5}, LK5/g;->F(LK5/j;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_17
    iget-wide v2, v1, LK5/g;->q:J

    cmp-long v0, v2, v11

    if-nez v0, :cond_18

    invoke-virtual {v1, v8}, LK5/g;->F(LK5/j;)V

    :cond_18
    new-instance v0, LK5/x;

    iget-wide v2, v1, LK5/g;->q:J

    invoke-virtual {v1, v2, v3}, LK5/g;->c(J)LK5/j;

    move-result-object v1

    invoke-direct {v0, v1}, LK5/x;-><init>(LK5/j;)V

    return-object v0

    :cond_19
    :goto_b
    invoke-virtual {v0}, LK5/g;->readByte()B

    move-result v3

    if-nez v2, :cond_1a

    invoke-static {v3}, LL5/c;->e(B)LK5/j;

    move-result-object v2

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public static final e(B)LK5/j;
    .locals 2

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_0

    sget-object p0, LL5/c;->b:LK5/j;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {p0, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, LL5/c;->a:LK5/j;

    return-object p0
.end method

.method public static final f(Ljava/lang/String;)LK5/j;
    .locals 2

    const-string v0, "/"

    invoke-static {p0, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LL5/c;->a:LK5/j;

    return-object p0

    :cond_0
    const-string v0, "\\"

    invoke-static {p0, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, LL5/c;->b:LK5/j;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {v1, p0}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
