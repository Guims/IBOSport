.class public final LR/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LR/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LR/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lw/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lw/e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lv1/P;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lv1/P;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ll3/y;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll3/y;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lk/X0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lk/X0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_3
    new-instance v0, Li3/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Li3/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lb3/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb3/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_5
    new-instance v0, LT2/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LT2/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_6
    new-instance v0, LS2/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LS2/d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, LR/c;->q:LR/a;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "superState must be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LR/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lw/e;

    invoke-direct {v0, p1, p2}, Lw/e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lv1/P;

    invoke-direct {v0, p1, p2}, Lv1/P;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ll3/y;

    invoke-direct {v0, p1, p2}, Ll3/y;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lk/X0;

    invoke-direct {v0, p1, p2}, Lk/X0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_3
    new-instance v0, Li3/b;

    invoke-direct {v0, p1, p2}, Li3/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lb3/a;

    invoke-direct {v0, p1, p2}, Lb3/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_5
    new-instance v0, LT2/b;

    invoke-direct {v0, p1, p2}, LT2/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_6
    new-instance v0, LS2/d;

    invoke-direct {v0, p1, p2}, LS2/d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, LR/c;->q:LR/a;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "superState must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, LR/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lw/e;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lv1/P;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Ll3/y;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lk/X0;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Li3/b;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lb3/a;

    return-object p1

    :pswitch_5
    new-array p1, p1, [LT2/b;

    return-object p1

    :pswitch_6
    new-array p1, p1, [LS2/d;

    return-object p1

    :pswitch_7
    new-array p1, p1, [LR/c;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
