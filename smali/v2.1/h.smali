.class public final Lv2/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lv2/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lx2/c;Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lx2/c;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, LE2/g;->R(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lx2/c;->q:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v3}, LE2/g;->R(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lx2/c;->r:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v3}, LE2/g;->R(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lx2/c;->s:Ljava/lang/String;

    invoke-static {p1, v3, v1}, LE2/g;->M(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lx2/c;->t:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    invoke-static {p1, v2}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v2}, LE2/g;->Q(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x6

    iget-object v2, p0, Lx2/c;->u:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2}, LE2/g;->N(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lx2/c;->v:Landroid/os/Bundle;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    invoke-static {p1, v2}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p1, v2}, LE2/g;->Q(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v1, 0x8

    iget-object v2, p0, Lx2/c;->w:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2}, LE2/g;->L(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lx2/c;->x:[Lu2/c;

    invoke-static {p1, v1, v2, p2}, LE2/g;->N(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lx2/c;->y:[Lu2/c;

    invoke-static {p1, v1, v2, p2}, LE2/g;->N(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lx2/c;->z:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, v3}, LE2/g;->R(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lx2/c;->A:I

    const/16 v1, 0xd

    invoke-static {p1, v1, v3}, LE2/g;->R(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lx2/c;->B:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, v3}, LE2/g;->R(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    iget-object p0, p0, Lx2/c;->C:Ljava/lang/String;

    invoke-static {p1, p2, p0}, LE2/g;->M(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, LE2/g;->Q(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lv2/h;->a:I

    packed-switch v2, :pswitch_data_0

    invoke-static {v1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lx2/c;->D:[Lcom/google/android/gms/common/api/Scope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lx2/c;->E:[Lu2/c;

    move-object v15, v3

    move-object v14, v4

    move-object v12, v5

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v22, v16

    move v9, v6

    move v10, v9

    move v11, v10

    move/from16 v19, v11

    move/from16 v20, v19

    move/from16 v21, v20

    move-object/from16 v17, v7

    move-object/from16 v18, v17

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_1

    :pswitch_0
    invoke-static {v1, v3}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v3}, LC2/b;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    :pswitch_2
    invoke-static {v1, v3}, LC2/b;->K(Landroid/os/Parcel;I)Z

    move-result v21

    goto :goto_0

    :pswitch_3
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v20

    goto :goto_0

    :pswitch_4
    invoke-static {v1, v3}, LC2/b;->K(Landroid/os/Parcel;I)Z

    move-result v19

    goto :goto_0

    :pswitch_5
    sget-object v4, Lu2/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LC2/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, [Lu2/c;

    goto :goto_0

    :pswitch_6
    sget-object v4, Lu2/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LC2/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, [Lu2/c;

    goto :goto_0

    :pswitch_7
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LC2/b;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/accounts/Account;

    goto :goto_0

    :pswitch_8
    invoke-static {v1, v3}, LC2/b;->N(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_0

    move-object v15, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v15, v6

    goto :goto_0

    :pswitch_9
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LC2/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_0

    :pswitch_a
    invoke-static {v1, v3}, LC2/b;->N(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_1

    move-object v13, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v13, v6

    goto :goto_0

    :pswitch_b
    invoke-static {v1, v3}, LC2/b;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_c
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v11

    goto/16 :goto_0

    :pswitch_d
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v10

    goto/16 :goto_0

    :pswitch_e
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v9

    goto/16 :goto_0

    :cond_2
    invoke-static {v1, v2}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance v8, Lx2/c;

    invoke-direct/range {v8 .. v22}, Lx2/c;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lu2/c;[Lu2/c;ZIZLjava/lang/String;)V

    return-object v8

    :pswitch_f
    invoke-static {v1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v9, v6

    move-object v11, v9

    move v7, v4

    move v8, v7

    move v10, v8

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_5

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    packed-switch v5, :pswitch_data_2

    invoke-static {v1, v4}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_1

    :pswitch_10
    invoke-static {v1, v4}, LC2/b;->N(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v4, :cond_3

    move-object v11, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1

    :pswitch_11
    invoke-static {v1, v4}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_1

    :pswitch_12
    invoke-static {v1, v4}, LC2/b;->N(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v4, :cond_4

    move-object v9, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1

    :pswitch_13
    invoke-static {v1, v4}, LC2/b;->K(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_1

    :pswitch_14
    invoke-static {v1, v4}, LC2/b;->K(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_1

    :pswitch_15
    sget-object v5, Lx2/g;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v5}, LC2/b;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lx2/g;

    goto :goto_1

    :cond_5
    invoke-static {v1, v2}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance v5, Lx2/b;

    invoke-direct/range {v5 .. v11}, Lx2/b;-><init>(Lx2/g;ZZ[II[I)V

    return-object v5

    :pswitch_16
    invoke-static {v1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v2, :cond_b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v9, v8

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_8

    const/4 v10, 0x3

    if-eq v9, v10, :cond_7

    const/4 v10, 0x4

    if-eq v9, v10, :cond_6

    invoke-static {v1, v8}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_6
    sget-object v7, Lx2/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v8, v7}, LC2/b;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lx2/b;

    goto :goto_2

    :cond_7
    invoke-static {v1, v8}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_2

    :cond_8
    sget-object v6, Lu2/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v8, v6}, LC2/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lu2/c;

    goto :goto_2

    :cond_9
    invoke-static {v1, v8}, LC2/b;->N(Landroid/os/Parcel;I)I

    move-result v5

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-nez v5, :cond_a

    move-object v5, v3

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v9

    add-int/2addr v8, v5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v5, v9

    goto :goto_2

    :cond_b
    invoke-static {v1, v2}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance v1, Lx2/u;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lx2/u;->b:Landroid/os/Bundle;

    iput-object v6, v1, Lx2/u;->q:[Lu2/c;

    iput v4, v1, Lx2/u;->r:I

    iput-object v7, v1, Lx2/u;->s:Lx2/b;

    return-object v1

    :pswitch_17
    invoke-static {v1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_11

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v10, 0x1

    if-eq v4, v10, :cond_10

    const/4 v10, 0x2

    if-eq v4, v10, :cond_f

    const/4 v10, 0x3

    if-eq v4, v10, :cond_e

    const/4 v10, 0x4

    if-eq v4, v10, :cond_d

    const/4 v10, 0x5

    if-eq v4, v10, :cond_c

    invoke-static {v1, v3}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_c
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_3

    :cond_d
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_3

    :cond_e
    invoke-static {v1, v3}, LC2/b;->K(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_3

    :cond_f
    invoke-static {v1, v3}, LC2/b;->K(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_3

    :cond_10
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_3

    :cond_11
    invoke-static {v1, v2}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance v4, Lx2/g;

    invoke-direct/range {v4 .. v9}, Lx2/g;-><init>(IIIZZ)V

    return-object v4

    :pswitch_18
    invoke-static {v1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move/from16 v19, v3

    move v9, v4

    move v10, v9

    move v11, v10

    move/from16 v18, v11

    move-object/from16 v16, v5

    move-object/from16 v17, v16

    move-wide v12, v6

    move-wide v14, v12

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_12

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/16 v5, 0x8

    packed-switch v4, :pswitch_data_3

    invoke-static {v1, v3}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_19
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v19, v3

    goto :goto_4

    :pswitch_1a
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_4

    :pswitch_1b
    invoke-static {v1, v3}, LC2/b;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_4

    :pswitch_1c
    invoke-static {v1, v3}, LC2/b;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_4

    :pswitch_1d
    invoke-static {v1, v3, v5}, LC2/b;->W(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_4

    :pswitch_1e
    invoke-static {v1, v3, v5}, LC2/b;->W(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-wide v12, v3

    goto :goto_4

    :pswitch_1f
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v3

    move v11, v3

    goto :goto_4

    :pswitch_20
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v3

    move v10, v3

    goto :goto_4

    :pswitch_21
    invoke-static {v1, v3}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    goto :goto_4

    :cond_12
    invoke-static {v1, v2}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance v8, Lx2/e;

    invoke-direct/range {v8 .. v19}, Lx2/e;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v8

    :pswitch_22
    invoke-static {v1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    move-object v5, v3

    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_16

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_15

    const/4 v8, 0x2

    if-eq v7, v8, :cond_13

    invoke-static {v1, v6}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_13
    sget-object v5, Lx2/e;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6}, LC2/b;->N(Landroid/os/Parcel;I)I

    move-result v6

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-nez v6, :cond_14

    goto :goto_5

    :cond_14
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/2addr v7, v6

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_6

    :cond_15
    invoke-static {v1, v6}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_6

    :cond_16
    invoke-static {v1, v2}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance v1, Lx2/h;

    invoke-direct {v1, v4, v5}, Lx2/h;-><init>(ILjava/util/List;)V

    return-object v1

    :pswitch_23
    invoke-static {v1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    move-object v4, v5

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_1b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1a

    const/4 v9, 0x2

    if-eq v8, v9, :cond_19

    const/4 v9, 0x3

    if-eq v8, v9, :cond_18

    const/4 v9, 0x4

    if-eq v8, v9, :cond_17

    invoke-static {v1, v7}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_17
    sget-object v5, Lu2/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v5}, LC2/b;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lu2/a;

    goto :goto_7

    :cond_18
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v4}, LC2/b;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    goto :goto_7

    :cond_19
    invoke-static {v1, v7}, LC2/b;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_1a
    invoke-static {v1, v7}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_7

    :cond_1b
    invoke-static {v1, v2}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lu2/a;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lv2/h;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lx2/c;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lx2/b;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lx2/u;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lx2/g;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lx2/e;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lx2/h;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
