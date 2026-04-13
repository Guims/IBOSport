.class public final LB1/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LB1/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LB1/a;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LY0/i;

    invoke-direct {v0, p1}, LY0/i;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_0
    new-instance p1, LY0/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_1
    new-instance v0, LY0/e;

    invoke-direct {v0, p1}, LY0/e;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_2
    new-instance v0, LY0/a;

    invoke-direct {v0, p1}, LY0/a;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3
    new-instance v0, LX0/d;

    invoke-direct {v0, p1}, LX0/d;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v1, LX0/b;

    invoke-direct/range {v1 .. v6}, LX0/b;-><init>(IJJ)V

    return-object v1

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, LX0/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance p1, LX0/c;

    invoke-direct {p1, v0}, LX0/c;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :pswitch_6
    new-instance v0, LX0/a;

    invoke-direct {v0, p1}, LX0/a;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_7
    new-instance v0, LW0/p;

    invoke-direct {v0, p1}, LW0/p;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_8
    new-instance v0, LW0/o;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lp3/H;->k([Ljava/lang/Object;)Lp3/Y;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, LW0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lp3/Y;)V

    return-object v0

    :pswitch_9
    new-instance v0, LW0/n;

    invoke-direct {v0, p1}, LW0/n;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_a
    new-instance v0, LW0/m;

    invoke-direct {v0, p1}, LW0/m;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_b
    new-instance v0, LW0/l;

    invoke-direct {v0, p1}, LW0/l;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_c
    new-instance v0, LW0/f;

    invoke-direct {v0, p1}, LW0/f;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_d
    new-instance v0, LW0/e;

    invoke-direct {v0, p1}, LW0/e;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_e
    new-instance v0, LW0/d;

    invoke-direct {v0, p1}, LW0/d;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_f
    new-instance v0, LW0/c;

    invoke-direct {v0, p1}, LW0/c;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_10
    new-instance v0, LW0/b;

    invoke-direct {v0, p1}, LW0/b;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_11
    new-instance v0, LW0/a;

    invoke-direct {v0, p1}, LW0/a;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_12
    new-instance v0, LV2/b;

    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const-class v1, LV2/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, LV2/b;->b:I

    return-object v0

    :pswitch_13
    new-instance v0, LV0/c;

    invoke-direct {v0, p1}, LV0/c;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_14
    new-instance v0, LV0/b;

    invoke-direct {v0, p1}, LV0/b;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_15
    new-instance v0, LU0/b;

    invoke-direct {v0, p1}, LU0/b;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_16
    new-instance v0, LU0/a;

    invoke-direct {v0, p1}, LU0/a;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_17
    new-instance v0, LT0/a;

    invoke-direct {v0, p1}, LT0/a;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    new-instance v1, LS0/a;

    invoke-direct {v1, p1, v0}, LS0/a;-><init>(ILjava/lang/String;)V

    return-object v1

    :pswitch_19
    new-instance v0, Lpl/droidsonroids/gif/d;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/d;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1a
    new-instance v0, LP2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xff

    iput v1, v0, LP2/b;->x:I

    const/4 v1, -0x2

    iput v1, v0, LP2/b;->z:I

    iput v1, v0, LP2/b;->A:I

    iput v1, v0, LP2/b;->B:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, LP2/b;->I:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, LP2/b;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->q:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->r:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->s:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->t:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->u:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->v:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->w:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, LP2/b;->x:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LP2/b;->y:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, LP2/b;->z:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, LP2/b;->A:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, LP2/b;->B:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LP2/b;->D:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LP2/b;->E:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, LP2/b;->F:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->H:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->J:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->K:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->L:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->M:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->N:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->O:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->R:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->P:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, LP2/b;->Q:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, v0, LP2/b;->I:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, v0, LP2/b;->C:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, v0, LP2/b;->S:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1b
    new-instance v0, LP/k;

    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, LP/k;->b:I

    return-object v0

    :pswitch_1c
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, LB1/a;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [LY0/i;

    return-object p1

    :pswitch_0
    new-array p1, p1, [LY0/f;

    return-object p1

    :pswitch_1
    new-array p1, p1, [LY0/e;

    return-object p1

    :pswitch_2
    new-array p1, p1, [LY0/a;

    return-object p1

    :pswitch_3
    new-array p1, p1, [LX0/d;

    return-object p1

    :pswitch_4
    new-array p1, p1, [LX0/b;

    return-object p1

    :pswitch_5
    new-array p1, p1, [LX0/c;

    return-object p1

    :pswitch_6
    new-array p1, p1, [LX0/a;

    return-object p1

    :pswitch_7
    new-array p1, p1, [LW0/p;

    return-object p1

    :pswitch_8
    new-array p1, p1, [LW0/o;

    return-object p1

    :pswitch_9
    new-array p1, p1, [LW0/n;

    return-object p1

    :pswitch_a
    new-array p1, p1, [LW0/m;

    return-object p1

    :pswitch_b
    new-array p1, p1, [LW0/l;

    return-object p1

    :pswitch_c
    new-array p1, p1, [LW0/f;

    return-object p1

    :pswitch_d
    new-array p1, p1, [LW0/e;

    return-object p1

    :pswitch_e
    new-array p1, p1, [LW0/d;

    return-object p1

    :pswitch_f
    new-array p1, p1, [LW0/c;

    return-object p1

    :pswitch_10
    new-array p1, p1, [LW0/b;

    return-object p1

    :pswitch_11
    new-array p1, p1, [LW0/a;

    return-object p1

    :pswitch_12
    new-array p1, p1, [LV2/b;

    return-object p1

    :pswitch_13
    new-array p1, p1, [LV0/c;

    return-object p1

    :pswitch_14
    new-array p1, p1, [LV0/b;

    return-object p1

    :pswitch_15
    new-array p1, p1, [LU0/b;

    return-object p1

    :pswitch_16
    new-array p1, p1, [LU0/a;

    return-object p1

    :pswitch_17
    new-array p1, p1, [LT0/a;

    return-object p1

    :pswitch_18
    new-array p1, p1, [LS0/a;

    return-object p1

    :pswitch_19
    new-array p1, p1, [Lpl/droidsonroids/gif/d;

    return-object p1

    :pswitch_1a
    new-array p1, p1, [LP2/b;

    return-object p1

    :pswitch_1b
    new-array p1, p1, [LP/k;

    return-object p1

    :pswitch_1c
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method
