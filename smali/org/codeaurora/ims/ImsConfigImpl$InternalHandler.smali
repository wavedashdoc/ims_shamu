.class Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;
.super Landroid/os/Handler;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 251
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 252
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 255
    nop

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 324
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalThreadHandler: unexpected message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 320
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 321
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1200(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1400(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    .line 322
    return-void

    .line 316
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 317
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1200(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1300(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    .line 318
    return-void

    .line 309
    :pswitch_3
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$000(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1002(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z

    .line 311
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1100(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 312
    return-void

    .line 314
    :cond_0
    return-void

    .line 305
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 306
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    iget v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->item:I

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    .line 307
    return-void

    .line 297
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 298
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    .line 299
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;->item:I

    iget-object p1, p1, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;->value:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$900(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    .line 300
    monitor-enter v0

    .line 301
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 302
    monitor-exit v0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 289
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 290
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    .line 291
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->item:I

    iget p1, p1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->value:I

    invoke-static {v1, v2, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$800(Lorg/codeaurora/ims/ImsConfigImpl;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    .line 292
    monitor-enter v0

    .line 293
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 294
    monitor-exit v0

    goto :goto_0

    .line 295
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 282
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 283
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    iget v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;->item:I

    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$700(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    .line 284
    monitor-enter v0

    .line 285
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit v0

    goto :goto_0

    .line 287
    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 275
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 276
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    iget v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->item:I

    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    .line 277
    monitor-enter v0

    .line 278
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 279
    monitor-exit v0

    .line 327
    :goto_0
    return-void

    .line 280
    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    .line 267
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 268
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .line 269
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    .line 270
    goto :goto_1

    .line 269
    :cond_1
    const/4 v1, 0x1

    .line 272
    :goto_1
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 273
    return-void

    .line 264
    :pswitch_a
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$400(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 265
    return-void

    .line 261
    :pswitch_b
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$300(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 262
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
