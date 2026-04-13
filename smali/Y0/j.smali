.class public final LY0/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LY0/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, LY0/j;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v6, v1

    if-eq v6, v4, :cond_1

    if-eq v6, v2, :cond_0

    invoke-static {p1, v1}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, LC2/b;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {p1, v5, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object p1

    :pswitch_0
    new-instance v0, Lv1/e0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lv1/e0;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lv1/e0;->q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lv1/e0;->r:I

    if-lez v1, :cond_3

    new-array v1, v1, [I

    iput-object v1, v0, Lv1/e0;->s:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lv1/e0;->t:I

    if-lez v1, :cond_4

    new-array v1, v1, [I

    iput-object v1, v0, Lv1/e0;->u:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v5

    :goto_1
    iput-boolean v1, v0, Lv1/e0;->w:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v5

    :goto_2
    iput-boolean v1, v0, Lv1/e0;->x:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    iput-boolean v4, v0, Lv1/e0;->y:Z

    const-class v1, Lv1/d0;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lv1/e0;->v:Ljava/util/ArrayList;

    return-object v0

    :pswitch_1
    new-instance v0, Lv1/d0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lv1/d0;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lv1/d0;->q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :goto_4
    iput-boolean v4, v0, Lv1/d0;->s:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_9

    new-array v1, v1, [I

    iput-object v1, v0, Lv1/d0;->r:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_9
    return-object v0

    :pswitch_2
    new-instance v0, Lv1/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lv1/r;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lv1/r;->q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v4, :cond_a

    goto :goto_5

    :cond_a
    move v4, v5

    :goto_5
    iput-boolean v4, v0, Lv1/r;->r:Z

    return-object v0

    :pswitch_3
    new-instance v0, Lv0/x;

    invoke-direct {v0, p1}, Lv0/x;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lv0/y;

    invoke-direct {v0, p1}, Lv0/y;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_5
    invoke-static {p1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v6, -0x1

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v9, v8

    if-eq v9, v4, :cond_d

    if-eq v9, v2, :cond_c

    if-eq v9, v1, :cond_b

    invoke-static {p1, v8}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_b
    const/16 v6, 0x8

    invoke-static {p1, v8, v6}, LC2/b;->W(Landroid/os/Parcel;II)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    goto :goto_6

    :cond_c
    invoke-static {p1, v8}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_6

    :cond_d
    invoke-static {p1, v8}, LC2/b;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_e
    invoke-static {p1, v0}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance p1, Lu2/c;

    invoke-direct {p1, v5, v6, v7, v3}, Lu2/c;-><init>(IJLjava/lang/String;)V

    return-object p1

    :pswitch_6
    invoke-static {p1}, LC2/b;->V(Landroid/os/Parcel;)I

    move-result v0

    move v6, v5

    move v7, v6

    move-object v5, v3

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_13

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v9, v8

    if-eq v9, v4, :cond_12

    if-eq v9, v2, :cond_11

    if-eq v9, v1, :cond_10

    const/4 v10, 0x4

    if-eq v9, v10, :cond_f

    invoke-static {p1, v8}, LC2/b;->T(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_f
    invoke-static {p1, v8}, LC2/b;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_10
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v8, v3}, LC2/b;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_7

    :cond_11
    invoke-static {p1, v8}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_7

    :cond_12
    invoke-static {p1, v8}, LC2/b;->M(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_7

    :cond_13
    invoke-static {p1, v0}, LC2/b;->r(Landroid/os/Parcel;I)V

    new-instance p1, Lu2/a;

    invoke-direct {p1, v6, v7, v3, v5}, Lu2/a;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object p1

    :pswitch_7
    new-instance v0, Ll0/e;

    invoke-direct {v0, p1}, Ll0/e;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_8
    new-instance v0, Ll0/d;

    invoke-direct {v0, p1}, Ll0/d;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_9
    new-instance v0, Ll0/a;

    invoke-direct {v0, p1}, Ll0/a;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lk/L;

    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_8

    :cond_14
    move v4, v5

    :goto_8
    iput-boolean v4, v0, Lk/L;->b:Z

    return-object v0

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/n;->a(II)Lcom/google/android/material/datepicker/n;

    move-result-object p1

    return-object p1

    :pswitch_c
    new-instance v0, Lcom/google/android/material/datepicker/d;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/d;-><init>(J)V

    return-object v0

    :pswitch_d
    const-class v0, Lcom/google/android/material/datepicker/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/datepicker/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/datepicker/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/datepicker/n;

    const-class v0, Lcom/google/android/material/datepicker/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/datepicker/d;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-instance v2, Lcom/google/android/material/datepicker/b;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/datepicker/b;-><init>(Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/n;I)V

    return-object v2

    :pswitch_e
    new-instance v0, Lb/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    sget v1, Lb/c;->c:I

    if-nez p1, :cond_15

    goto :goto_9

    :cond_15
    sget-object v1, Lb/b;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_16

    instance-of v2, v1, Lb/b;

    if-eqz v2, :cond_16

    move-object v3, v1

    check-cast v3, Lb/b;

    goto :goto_9

    :cond_16
    new-instance v3, Lb/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p1, v3, Lb/a;->b:Landroid/os/IBinder;

    :goto_9
    iput-object v3, v0, Lb/d;->b:Lb/b;

    return-object v0

    :pswitch_f
    new-instance v0, Landroidx/leanback/widget/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/leanback/widget/n;->q:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroidx/leanback/widget/n;->b:I

    const-class v1, Landroidx/leanback/widget/o;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Landroidx/leanback/widget/n;->q:Landroid/os/Bundle;

    return-object v0

    :pswitch_10
    new-instance v0, Landroidx/fragment/app/P;

    invoke-direct {v0, p1}, Landroidx/fragment/app/P;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_11
    new-instance v0, Landroidx/fragment/app/L;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Landroidx/fragment/app/L;->t:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/L;->u:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/L;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/L;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/L;->q:Ljava/util/ArrayList;

    sget-object v1, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/fragment/app/b;

    iput-object v1, v0, Landroidx/fragment/app/L;->r:[Landroidx/fragment/app/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroidx/fragment/app/L;->s:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/L;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/L;->u:Ljava/util/ArrayList;

    sget-object v1, Landroidx/fragment/app/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/L;->v:Ljava/util/ArrayList;

    sget-object v1, Landroidx/fragment/app/G;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/L;->w:Ljava/util/ArrayList;

    return-object v0

    :pswitch_12
    new-instance v0, Landroidx/fragment/app/G;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/G;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Landroidx/fragment/app/G;->q:I

    return-object v0

    :pswitch_13
    new-instance v0, Landroidx/fragment/app/c;

    invoke-direct {v0, p1}, Landroidx/fragment/app/c;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_14
    new-instance v0, Landroidx/fragment/app/b;

    invoke-direct {v0, p1}, Landroidx/fragment/app/b;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_15
    const-string v0, "inParcel"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/result/h;

    const-class v1, Landroid/content/IntentSender;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    check-cast v1, Landroid/content/IntentSender;

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/activity/result/h;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object v0

    :pswitch_16
    new-instance v0, Landroidx/activity/result/a;

    invoke-direct {v0, p1}, Landroidx/activity/result/a;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_17
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    :pswitch_18
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_19
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1c

    check-cast p1, Landroid/media/MediaDescription;

    invoke-static {p1}, Landroid/support/v4/media/a;->g(Landroid/media/MediaDescription;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/support/v4/media/a;->i(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p1}, Landroid/support/v4/media/a;->h(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {p1}, Landroid/support/v4/media/a;->c(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {p1}, Landroid/support/v4/media/a;->e(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {p1}, Landroid/support/v4/media/a;->f(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {p1}, Landroid/support/v4/media/a;->d(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Landroid/support/v4/media/session/b;->v(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_17
    const-string v1, "android.support.v4.media.description.MEDIA_URI"

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_a

    :cond_18
    move-object v4, v3

    :goto_a
    if-eqz v4, :cond_1a

    const-string v11, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    move-result v12

    if-ne v12, v2, :cond_19

    move-object v11, v3

    goto :goto_b

    :cond_19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1a
    move-object v11, v0

    :goto_b
    if-eqz v4, :cond_1b

    :goto_c
    move-object v12, v4

    goto :goto_d

    :cond_1b
    invoke-static {p1}, Landroid/support/v4/media/b;->a(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_c

    :goto_d
    new-instance v4, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-direct/range {v4 .. v12}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    iput-object p1, v4, Landroid/support/v4/media/MediaDescriptionCompat;->x:Landroid/media/MediaDescription;

    move-object v3, v4

    :cond_1c
    return-object v3

    :pswitch_1a
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1b
    new-instance v0, LZ0/a;

    invoke-direct {v0, p1}, LU0/b;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1c
    new-instance v0, LY0/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, LY0/k;-><init>(JJ)V

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

    iget v0, p0, LY0/j;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lv1/e0;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lv1/d0;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lv1/r;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lv0/x;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lv0/y;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lu2/c;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lu2/a;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Ll0/e;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Ll0/d;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Ll0/a;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Lk/L;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Lcom/google/android/material/datepicker/n;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Lcom/google/android/material/datepicker/d;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Lcom/google/android/material/datepicker/b;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Lb/d;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Landroidx/leanback/widget/n;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Landroidx/fragment/app/P;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Landroidx/fragment/app/L;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Landroidx/fragment/app/G;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Landroidx/fragment/app/c;

    return-object p1

    :pswitch_14
    new-array p1, p1, [Landroidx/fragment/app/b;

    return-object p1

    :pswitch_15
    new-array p1, p1, [Landroidx/activity/result/h;

    return-object p1

    :pswitch_16
    new-array p1, p1, [Landroidx/activity/result/a;

    return-object p1

    :pswitch_17
    new-array p1, p1, [Landroid/support/v4/media/RatingCompat;

    return-object p1

    :pswitch_18
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1

    :pswitch_19
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p1

    :pswitch_1a
    new-array p1, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    return-object p1

    :pswitch_1b
    new-array p1, p1, [LZ0/a;

    return-object p1

    :pswitch_1c
    new-array p1, p1, [LY0/k;

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
