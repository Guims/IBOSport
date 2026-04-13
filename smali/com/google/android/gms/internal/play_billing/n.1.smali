.class public final synthetic Lcom/google/android/gms/internal/play_billing/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/n;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/G;

    iget v0, p1, Lcom/google/android/gms/internal/play_billing/w;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/w;->a:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/H;->j(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/H;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p1, Lcom/google/android/gms/internal/play_billing/w;->b:I

    iput-boolean v1, p1, Lcom/google/android/gms/internal/play_billing/w;->c:Z

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/w;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/Z;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/Z;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/X;->x:Lcom/google/android/gms/internal/play_billing/X;

    :goto_0
    return-object v0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/y;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/play_billing/w;->c:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/w;->a:[Ljava/lang/Object;

    iget p1, p1, Lcom/google/android/gms/internal/play_billing/w;->b:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/C;->j(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/Q;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/E;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/E;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "initialCapacity"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/d1;->i(ILjava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/M;->r:Lcom/google/android/gms/internal/play_billing/M;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/J;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/J;

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/play_billing/J;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/play_billing/J;-><init>(Ljava/util/Iterator;)V

    move-object p1, v1

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/J;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/J;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/O;

    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/J;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-boolean v5, p1, Lcom/google/android/gms/internal/play_billing/J;->q:Z

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/google/android/gms/internal/play_billing/J;->b:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p1, Lcom/google/android/gms/internal/play_billing/J;->r:Ljava/lang/Object;

    iput-boolean v4, p1, Lcom/google/android/gms/internal/play_billing/J;->q:Z

    :cond_4
    iget-object v5, p1, Lcom/google/android/gms/internal/play_billing/J;->r:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/O;

    iget-object v6, v3, Lcom/google/android/gms/internal/play_billing/O;->b:Lcom/google/android/gms/internal/play_billing/v;

    iget-object v7, v3, Lcom/google/android/gms/internal/play_billing/O;->q:Lcom/google/android/gms/internal/play_billing/v;

    iget-object v8, v5, Lcom/google/android/gms/internal/play_billing/O;->q:Lcom/google/android/gms/internal/play_billing/v;

    iget-object v9, v5, Lcom/google/android/gms/internal/play_billing/O;->b:Lcom/google/android/gms/internal/play_billing/v;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/play_billing/v;->a(Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v8

    if-gtz v8, :cond_13

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/play_billing/v;->a(Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v8

    if-gtz v8, :cond_13

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/play_billing/v;->a(Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v8

    iget-object v10, v5, Lcom/google/android/gms/internal/play_billing/O;->q:Lcom/google/android/gms/internal/play_billing/v;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/play_billing/v;->a(Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v11

    if-ltz v8, :cond_6

    if-lez v11, :cond_5

    goto :goto_4

    :cond_5
    move-object v8, v3

    goto :goto_7

    :cond_6
    :goto_4
    if-gtz v8, :cond_8

    if-gez v11, :cond_7

    goto :goto_5

    :cond_7
    move-object v8, v5

    goto :goto_7

    :cond_8
    :goto_5
    if-ltz v8, :cond_9

    move-object v9, v6

    :cond_9
    if-gtz v11, :cond_a

    move-object v10, v7

    :cond_a
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/play_billing/v;->a(Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v8

    if-gtz v8, :cond_b

    move v8, v4

    goto :goto_6

    :cond_b
    move v8, v2

    :goto_6
    if-eqz v8, :cond_12

    new-instance v8, Lcom/google/android/gms/internal/play_billing/O;

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/internal/play_billing/O;-><init>(Lcom/google/android/gms/internal/play_billing/v;Lcom/google/android/gms/internal/play_billing/v;)V

    :goto_7
    iget-object v9, v8, Lcom/google/android/gms/internal/play_billing/O;->b:Lcom/google/android/gms/internal/play_billing/v;

    iget-object v8, v8, Lcom/google/android/gms/internal/play_billing/O;->q:Lcom/google/android/gms/internal/play_billing/v;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/play_billing/v;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/J;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/O;

    iget-object v8, v5, Lcom/google/android/gms/internal/play_billing/O;->b:Lcom/google/android/gms/internal/play_billing/v;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/play_billing/v;->a(Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v8

    iget-object v9, v5, Lcom/google/android/gms/internal/play_billing/O;->q:Lcom/google/android/gms/internal/play_billing/v;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/play_billing/v;->a(Lcom/google/android/gms/internal/play_billing/v;)I

    move-result v7

    if-gtz v8, :cond_c

    if-gez v7, :cond_3

    :cond_c
    if-ltz v8, :cond_e

    if-lez v7, :cond_d

    goto :goto_9

    :cond_d
    :goto_8
    move-object v3, v5

    goto/16 :goto_3

    :cond_e
    :goto_9
    if-gtz v8, :cond_f

    goto :goto_a

    :cond_f
    iget-object v6, v5, Lcom/google/android/gms/internal/play_billing/O;->b:Lcom/google/android/gms/internal/play_billing/v;

    :goto_a
    if-gez v7, :cond_10

    move-object v3, v5

    :cond_10
    iget-object v3, v3, Lcom/google/android/gms/internal/play_billing/O;->q:Lcom/google/android/gms/internal/play_billing/v;

    new-instance v5, Lcom/google/android/gms/internal/play_billing/O;

    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/play_billing/O;-><init>(Lcom/google/android/gms/internal/play_billing/v;Lcom/google/android/gms/internal/play_billing/v;)V

    goto :goto_8

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Overlapping ranges not permitted but found %s overlapping %s"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/d1;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "intersection is undefined for disconnected ranges %s and %s"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/d1;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v0

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/w;->g(II)I

    move-result v6

    if-gt v6, v4, :cond_14

    goto :goto_b

    :cond_14
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_b
    aput-object v3, v0, v1

    move v1, v5

    goto/16 :goto_2

    :cond_15
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/C;->j(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/Q;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p1, Lcom/google/android/gms/internal/play_billing/F;->q:Lcom/google/android/gms/internal/play_billing/F;

    goto :goto_e

    :cond_16
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/Q;->s:I

    if-ne v0, v4, :cond_1a

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/C;->l(I)Lcom/google/android/gms/internal/play_billing/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/z;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/z;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    check-cast v1, Lcom/google/android/gms/internal/play_billing/O;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/O;->r:Lcom/google/android/gms/internal/play_billing/O;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/O;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p1, Lcom/google/android/gms/internal/play_billing/F;->r:Lcom/google/android/gms/internal/play_billing/F;

    goto :goto_e

    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "expected one element but was: <"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_c
    const/4 v1, 0x4

    if-ge v2, v1, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/z;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/z;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/z;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_d

    :cond_19
    const-string v0, ", ..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Lcom/google/android/gms/internal/play_billing/F;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/F;-><init>(Lcom/google/android/gms/internal/play_billing/C;)V

    move-object p1, v0

    :goto_e
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
