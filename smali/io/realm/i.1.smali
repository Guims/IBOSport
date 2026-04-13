.class public final Lio/realm/i;
.super Lio/realm/O;

# interfaces
.implements Lio/realm/internal/y;


# instance fields
.field public final b:Lio/realm/v;


# direct methods
.method public constructor <init>(Lio/realm/d;Lio/realm/internal/A;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/realm/v;

    invoke-direct {v0, p0}, Lio/realm/v;-><init>(Lio/realm/O;)V

    iput-object v0, p0, Lio/realm/i;->b:Lio/realm/v;

    iput-object p1, v0, Lio/realm/v;->e:Lio/realm/d;

    iput-object p2, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-virtual {v0}, Lio/realm/v;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()Lio/realm/v;
    .locals 1

    iget-object v0, p0, Lio/realm/i;->b:Lio/realm/v;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lio/realm/i;->b:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v1}, Lio/realm/d;->b()V

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_6

    const-class v1, Lio/realm/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lio/realm/i;

    iget-object p1, p1, Lio/realm/i;->b:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v1, v1, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v2, p1, Lio/realm/v;->e:Lio/realm/d;

    iget-object v2, v2, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v2, Lio/realm/J;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v1}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v2}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->F()J

    move-result-wide v0

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {p1}, Lio/realm/internal/A;->F()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_6

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lio/realm/i;->b:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v1}, Lio/realm/d;->b()V

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v1, v1, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v2, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v2}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->F()J

    move-result-wide v3

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v3, v0

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v5, v0

    return v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lio/realm/i;->b:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v1}, Lio/realm/d;->b()V

    iget-object v1, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v1}, Lio/realm/internal/A;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    :cond_0
    iget-object v1, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v1}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " = dynamic["

    invoke-static {v1, v3}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v1}, Lio/realm/d;->b()V

    iget-object v1, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v1}, Lio/realm/internal/A;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    const-string v7, "]"

    if-ge v5, v3, :cond_c

    aget-object v8, v1, v5

    iget-object v9, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v9, v8}, Lio/realm/internal/A;->q(Ljava/lang/String;)J

    move-result-wide v9

    iget-object v11, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v11, v9, v10}, Lio/realm/internal/A;->D(J)Lio/realm/RealmFieldType;

    move-result-object v11

    const-string v12, "{"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lio/realm/h;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v8, v8, v12

    const-string v12, ">["

    const-string v13, "null"

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const-string v6, "?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<RealmAny>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<UUID>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_3
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<ObjectId>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_4
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<Decimal128>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_5
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<Double>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_6
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<Float>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_7
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<Date>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_8
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<byte[]>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_9
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<String>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_a
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<Boolean>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_b
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    const-string v6, "RealmList<Long>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_c
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<RealmAny>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_d
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v8, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v8, v9, v10}, Lio/realm/internal/A;->f(J)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RealmSet<"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_e
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<UUID>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_f
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<ObjectId>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_10
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<Decimal128>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_11
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<Double>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_12
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<Float>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_13
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<Date>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_14
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<byte[]>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_15
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<String>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_16
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<Boolean>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_17
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    const-string v6, "RealmSet<Long>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_18
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v8, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v8, v9, v10}, Lio/realm/internal/A;->r(J)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RealmDictionary<"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_19
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<RealmAny>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_1a
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<UUID>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_1b
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<ObjectId>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_1c
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<Decimal128>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_1d
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<Double>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_1e
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<Float>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_1f
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<Date>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_20
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<byte[]>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_21
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<String>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_22
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<Boolean>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_23
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10, v11}, Lio/realm/internal/A;->C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    const-string v6, "RealmDictionary<Long>["

    invoke-static {v6, v8, v9, v7, v2}, Lcom/google/android/material/datepicker/e;->n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_d

    :pswitch_24
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v8, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v8, v9, v10}, Lio/realm/internal/A;->l(J)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->a()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RealmList<"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_25
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->u(J)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->d()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_26
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->o(J)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->h(J)Ljava/util/UUID;

    move-result-object v13

    :goto_2
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_27
    iget-object v7, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v7, v9, v10}, Lio/realm/internal/A;->o(J)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v7, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v7, v9, v10}, Lio/realm/internal/A;->t(J)Lio/realm/internal/core/NativeRealmAny;

    move-result-object v7

    new-instance v13, Lio/realm/A;

    iget-object v8, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->getType()Lio/realm/z;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v14, 0x4

    packed-switch v10, :pswitch_data_1

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t cast to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_28
    new-instance v6, Lio/realm/o;

    sget-object v8, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v6, v7}, Lio/realm/B;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    goto/16 :goto_4

    :pswitch_29
    new-instance v6, Lio/realm/m;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asUUID()Ljava/util/UUID;

    move-result-object v8

    sget-object v9, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v6, v8, v7, v14}, Lio/realm/m;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    goto/16 :goto_4

    :pswitch_2a
    instance-of v6, v8, Lio/realm/y;

    if-eqz v6, :cond_4

    :try_start_0
    iget-object v6, v8, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v9, v8, Lio/realm/d;->r:Lio/realm/J;

    iget-object v9, v9, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {v7, v6, v9}, Lio/realm/internal/core/NativeRealmAny;->getModelClass(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/z;)Ljava/lang/Class;

    move-result-object v6

    new-instance v9, Lio/realm/N;

    invoke-direct {v9, v8, v7, v6}, Lio/realm/N;-><init>(Lio/realm/d;Lio/realm/internal/core/NativeRealmAny;Ljava/lang/Class;)V
    :try_end_0
    .catch Lio/realm/exceptions/RealmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    goto/16 :goto_4

    :catch_0
    :cond_4
    new-instance v6, Lio/realm/g;

    iget-object v9, v8, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v7, v9}, Lio/realm/internal/core/NativeRealmAny;->getRealmModelTableName(Lio/realm/internal/OsSharedRealm;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/realm/internal/Table;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-class v10, Lio/realm/i;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->getRealmModelRowKey()J

    move-result-wide v11

    invoke-virtual {v8, v10, v9, v11, v12}, Lio/realm/d;->s(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/M;

    move-result-object v7

    invoke-direct {v6, v7}, Lio/realm/N;-><init>(Lio/realm/M;)V

    goto/16 :goto_4

    :pswitch_2b
    new-instance v6, Lio/realm/m;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asObjectId()Lorg/bson/types/ObjectId;

    move-result-object v8

    sget-object v9, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v6, v8, v7, v12}, Lio/realm/m;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    goto/16 :goto_4

    :pswitch_2c
    new-instance v6, Lio/realm/e;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asDecimal128()Lorg/bson/types/Decimal128;

    move-result-object v8

    sget-object v9, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v6, v8, v7, v11}, Lio/realm/e;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    goto :goto_4

    :pswitch_2d
    new-instance v6, Lio/realm/m;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    sget-object v9, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v6, v8, v7, v11}, Lio/realm/m;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    goto :goto_4

    :pswitch_2e
    new-instance v6, Lio/realm/e;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asFloat()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    sget-object v9, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v6, v8, v7, v12}, Lio/realm/e;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    goto :goto_4

    :pswitch_2f
    new-instance v8, Lio/realm/m;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asDate()Ljava/util/Date;

    move-result-object v9

    sget-object v10, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v8, v9, v7, v6}, Lio/realm/m;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    :goto_3
    move-object v6, v8

    goto :goto_4

    :pswitch_30
    new-instance v6, Lio/realm/e;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asBinary()[B

    move-result-object v8

    sget-object v9, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v6, v8, v7, v4}, Lio/realm/e;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    goto :goto_4

    :pswitch_31
    new-instance v6, Lio/realm/e;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v6, v8, v7, v14}, Lio/realm/e;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    goto :goto_4

    :pswitch_32
    new-instance v8, Lio/realm/e;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asBoolean()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v8, v9, v7, v6}, Lio/realm/e;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    goto :goto_3

    :pswitch_33
    new-instance v6, Lio/realm/m;

    invoke-virtual {v7}, Lio/realm/internal/core/NativeRealmAny;->asLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sget-object v9, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {v6, v8, v7, v4}, Lio/realm/m;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V

    :goto_4
    invoke-direct {v13, v6}, Lio/realm/A;-><init>(Lio/realm/B;)V

    :goto_5
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_34
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->o(J)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_6

    :cond_5
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->g(J)Lorg/bson/types/ObjectId;

    move-result-object v13

    :goto_6
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_35
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->o(J)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_7

    :cond_6
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->a(J)Lorg/bson/types/Decimal128;

    move-result-object v13

    :goto_7
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_36
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->o(J)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_8

    :cond_7
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->n(J)Ljava/util/Date;

    move-result-object v13

    :goto_8
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_37
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->w(J)[B

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :pswitch_38
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :pswitch_39
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->o(J)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->x(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    :goto_9
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_d

    :pswitch_3a
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->o(J)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_a

    :cond_9
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->z(J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    :goto_a
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_d

    :pswitch_3b
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->o(J)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_b

    :cond_a
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->j(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    :goto_b
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_d

    :pswitch_3c
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->o(J)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_c

    :cond_b
    iget-object v6, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6, v9, v10}, Lio/realm/internal/A;->i(J)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    :goto_c
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_d
    const-string v6, "},"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, ""

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method
